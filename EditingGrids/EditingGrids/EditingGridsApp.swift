import SwiftUI

@main
struct EditingGridsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .navigationTitle("My Symbols")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
