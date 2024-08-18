import SwiftUI

@main
struct AnimalsApp: App {
    @StateObject var data = AnimalZoo()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .navigationTitle("My Animals")
            .environmentObject(data)
        }
    }
}
