import SwiftUI

struct AnimalDetail: View {
    let animal: Animal
    
    @State var color = Color.white
    @State var shadowRadius: CGFloat = 0.5
    @State var angle = Angle(degrees: 0)
    
    @State var isScaled = false
    
    var body: some View {
        VStack {
            Text(animal.emoji)
                .resizableFont()
                .colorMultiply(color)
                .shadow(color: color, radius: shadowRadius * 40)
                .rotation3DEffect(
                    Angle(degrees: isScaled ? 0 : 360),
                    axis: (x: 5, y: 2, z: 1)
                )
                .scaleEffect(isScaled ? 2.5 : 1)
                .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5), value: isScaled)
            
            ColorPicker("Choose a Color", selection: $color)
                .padding()
            
            HStack {
                Text("Shadow")
                Slider(value: $shadowRadius)
            }
            .padding()
            
            Button("Scale") {
                isScaled.toggle()
            }
        }
        .padding()
    }
}

#Preview {
    AnimalDetail(animal: Animal(name: "Dog", emoji: "🐶"))
}
