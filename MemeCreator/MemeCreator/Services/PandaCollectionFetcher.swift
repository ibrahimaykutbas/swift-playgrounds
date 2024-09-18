import SwiftUI

class PandaCollectionFetcher: ObservableObject {
    @Published var imageData = PandaCollection(sample: [Panda.defaultPanda])
    @Published var currentPanda = Panda.defaultPanda
    
    let urlString = "http://playgrounds-cdn.apple.com/assets/pandaData.json"
    
    enum FetchError: Error, LocalizedError {
        case badResponse
        case failedRequest(status: Int)
        case badJSON(error: Error)
        
        public var errorDescription: String? {
            switch self {
            case .badResponse:
                return "Bad response"
            case .failedRequest(let status):
                return "Failed request with status \(status)"
            case .badJSON(let error):
                return "Bad JSON: \(error)"
            }
        }
    }
    
    func fetchData() async throws {
        guard let url = URL(string: urlString) else { return }
        
        let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
        
        guard let response = response as? HTTPURLResponse else {
            throw FetchError.badResponse
        }
        
        guard response.statusCode == 200 else {
            throw FetchError.failedRequest(status: response.statusCode)
        }
        
        try await MainActor.run {
            do {
                imageData = try JSONDecoder().decode(PandaCollection.self, from: data)
            } catch {
                throw FetchError.badJSON(error: error)
            }
        }
    }
}

extension PandaCollectionFetcher: @unchecked Sendable {}
