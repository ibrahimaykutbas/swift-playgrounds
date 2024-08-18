import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: AnimalZoo
    
    var body: some View {
        List {
            Text("My Animals")
            
            Section("Dance") {
                NavigationLink("Make Animals Dance") {
                    DancingAnimals()
                        .navigationTitle("Dancing animals")
                }
            }
            
            ForEach(data.animals) { animal in
                NavigationLink {
                    AnimalDetail(animal: animal)
                        .navigationTitle(animal.name)
                } label: {
                    AnimalRow(animal: animal)
                }
            }
            .onDelete { indexSet in
                data.animals.remove(atOffsets: indexSet)
            }
        }
        .toolbar {
            ToolbarItem {
                NavigationLink("Add") {
                    AnimalEditor()
                        .navigationTitle("Add Animal")
                }
            }
        }
    }
}
