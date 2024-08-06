import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("", systemImage: "person")
                }
            
            StoryView()
                .tabItem {
                    Label("", systemImage: "book")
                }
            
            FavoritesView()
                .tabItem {
                    Label("", systemImage: "star")
                }
            
            FunFactsView()
                .tabItem {
                    Label("", systemImage: "hand.thumbsup")
                }
            
            CoverView()
                .tabItem {
                    Label("", systemImage: "photo")
                }
        }
    }
}

#Preview {
    ContentView()
}
