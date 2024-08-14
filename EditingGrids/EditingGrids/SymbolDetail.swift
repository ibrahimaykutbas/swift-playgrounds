import SwiftUI

struct SymbolDetail: View {
    var symbol: Symbol
    
    var body: some View {
        VStack {
            Text(symbol.name)
                .font(.title)
            
            Image(systemName: symbol.name)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.accentColor)
                .padding(.horizontal, 40)
        }
    }
}

struct Details_Preview: PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: Symbol(name:"tshirt"))
    }
}

//#Preview {
//    SymbolDetail(symbol: Symbol(name: "tshirt"))
//}
