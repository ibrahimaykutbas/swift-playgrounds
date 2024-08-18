import SwiftUI

extension AnimalZoo {
    func randomizeOffsets() {
        for index in animals.indices {
            animals[index].offset = CGSize(width: CGFloat.random(in: -200...200), height: CGFloat.random(in: -200...200))
            animals[index].rotation = Angle(degrees: Double.random(in: 0...720))
        }
    }
    
    func synchronizeOffsets() {
        let randomOffset = CGSize(width: CGFloat.random(in: -200...200), height: CGFloat.random(in: -200...200))
        for index in animals.indices {
            animals[index].offset = randomOffset
        }
    }
    
    func indexFor(_ animal: Animal) -> Double {
        if let index = animals.firstIndex(where: { $0.id == animal.id }) {
            return Double(index)
        }
        return 0.0
    }
}
