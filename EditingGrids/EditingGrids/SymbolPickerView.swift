import SwiftUI

struct SymbolPickerView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var symbol: Symbol?
    
    let columns = Array(repeating: GridItem(.flexible()), count: 4)
    
    let pickableSymbols = [
           Symbol(name: "tshirt"),
           Symbol(name: "mustache"),
           Symbol(name: "mouth"),
           Symbol(name: "eyeglasses"),
           Symbol(name: "house.fill"),
           Symbol(name: "gear"),
           Symbol(name: "gamecontroller.fill"),
           Symbol(name: "timer")
       ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(pickableSymbols) { symbol in
                    Button {
                        self.symbol = symbol
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: symbol.name)
                            .resizable()
                            .scaledToFit()
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.accentColor)
                            .ignoresSafeArea(.container, edges: .bottom)
                    }
                }
                .padding()
                .buttonStyle(.plain)
            }
        }
    }
}

struct SymbolPicker_Priviews: PreviewProvider {
    static var previews: some View {
        SymbolPickerView(symbol: .constant(nil))
    }
}

//#Preview {
//    SymbolPickerView(symbol: .constant(nil))
//}
