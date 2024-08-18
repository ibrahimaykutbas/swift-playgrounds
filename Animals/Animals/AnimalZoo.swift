import SwiftUI

class AnimalZoo: ObservableObject {
    @Published var animals = [
        Animal(name: "Dog", emoji: "🐶"),
        Animal(name: "Lion", emoji: "🦁"),
        Animal(name: "Rabbit", emoji: "🐇")
    ]
}

struct Animal: Identifiable {
    var name: String
    var emoji: String
    
    var id = UUID()
    var offset = CGSize.zero
    var rotation: Angle = Angle(degrees: 0)
}
