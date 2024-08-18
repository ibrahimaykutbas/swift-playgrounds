import SwiftUI

struct AnimalEditor: View {
    @State var newAnimal: Animal = Animal(name: "", emoji: "")
    @EnvironmentObject var data: AnimalZoo
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            Form {
                Section("Name") {
                    TextField("Name", text: $newAnimal.name)
                }
                
                Section("Emoji") {
                    TextField("Emoji", text: $newAnimal.emoji)
                }
                
                if (!newAnimal.name.isEmpty && !newAnimal.emoji.isEmpty) {
                    Section("Animal Preview") {
                        AnimalRow(animal: newAnimal)
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem {
                Button("Add") {
                    data.animals.append(newAnimal)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AnimalEditor()
}
