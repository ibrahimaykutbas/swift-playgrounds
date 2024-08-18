import SwiftUI

struct AnimalRow: View {
    var animal: Animal
    
    var body: some View {
        HStack {
            Text(animal.name)
                .font(.title)
            
            Spacer()
            
            Text(animal.emoji)
                .resizableFont()
                .frame(minWidth: 125)
        }
        .padding()
    }
}

#Preview {
    AnimalRow(animal: Animal(name: "Dog", emoji: "🐶"))
}
