import SwiftUI

@main
struct MemeCreatorApp: App {
    @StateObject private var collectionFetcher = PandaCollectionFetcher()
    @StateObject private var placesFetcher = PandaPlacesFetcher()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
//                MemeCreator()
//                    .environmentObject(collectionFetcher)
                PandaPlaces()
                    .environmentObject(placesFetcher)
            }
            .navigationViewStyle(.stack)
        }
    }
}
