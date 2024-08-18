import SwiftUI

struct DancingAnimals: View {
    @EnvironmentObject var data: AnimalZoo
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(data.animals) { animal in
                    Text(animal.emoji)
                        .resizableFont()
                        .offset(animal.offset)
                        .rotationEffect(animal.rotation)
                        .animation(.default.delay(data.indexFor(animal) / 10), value: animal.offset)
                        .animation(.spring(response: 0.5, dampingFraction: 0.5), value: animal.rotation)
                }
            }
            .onTapGesture(perform: {
                data.synchronizeOffsets()
            })
        }
    }
}

#Preview {
    DancingAnimals().environmentObject(AnimalZoo())
}
