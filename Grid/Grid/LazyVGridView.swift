import SwiftUI

struct LazyVGridView: View {
    let customColumns = [
        GridItem(.fixed(75)),
        GridItem(.fixed(100)),
        GridItem(.flexible(minimum: 125, maximum: 250)),
        GridItem(.adaptive(minimum: 100, maximum: 250))
    ]
    
    let columnLayouts = Array(repeating: GridItem(.flexible(minimum: 20, maximum: 100), spacing: 20, alignment: .center), count: 6)
    
    let columnLayout = Array(repeating: GridItem(.flexible(minimum: 50, maximum: 100)), count: 4)
    
    let allColors: [Color] = [.pink, .red, .orange, .yellow, .green, .mint, .teal, .cyan, .blue, .indigo, .purple, .brown, .gray]
    
    @State private var selectedColor = Color.white
    
    var body: some View {
        ScrollView {
            Image("wolverine")
                .resizable()
                .scaledToFit()
                .colorMultiply(selectedColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            LazyVGrid(columns: columnLayout) {
                ForEach(allColors.indices, id: \.self) { index in
                    Button {
                        selectedColor = allColors[index]
                    } label : {
                        RoundedRectangle(cornerRadius: 4.0)
                            .aspectRatio(1.0,contentMode: .fit)
                            .foregroundColor(allColors[index])
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    LazyVGridView()
}
