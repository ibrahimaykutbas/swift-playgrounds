import SwiftUI

struct ContentView: View {
    private static let initialColumns = 3
    
    @State private var selectedSymbol: Symbol?
    
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    
    @State private var isAddingSymbol = false
    @State private var isEditing = false
    
    @State private var symbols = [
        Symbol(name: "tshirt"),
        Symbol(name: "eyeglasses")
    ]
    
    var body: some View {
        VStack {
            if isEditing {
                Stepper(columnsText, value: $numColumns, in: 1...6, step: 1) {
                    _ in
                    withAnimation { gridColumns = Array(repeating: GridItem(.flexible()), count: numColumns)}
                }
                .padding()
            }
            
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(symbols) { symbol in
                        NavigationLink {
                            SymbolDetail(symbol: symbol)
                        } label: {
                            Image(systemName: symbol.name)
                                .resizable()
                                .scaledToFit()
                                .symbolRenderingMode(.hierarchical)
                                .foregroundColor(.accentColor)
                                .padding()
                                .overlay(alignment: .topLeading) {
                                    if isEditing {
                                        Button {
                                            remove(symbol: symbol)
                                        } label: {
                                            Image(systemName: "xmark.square.fill")
                                                .font(.title)
                                                .symbolRenderingMode(.palette)
                                                .foregroundStyle(.white, Color.red)
                                        }
                                    }
                                }
                        }
                        
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(isEditing ? "Finish" : "Edit") {
                    withAnimation {
                        isEditing.toggle()
                    }
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isAddingSymbol = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isAddingSymbol, onDismiss: addSymbol) {
            SymbolPickerView(symbol: $selectedSymbol)
        }
    }
    
    func addSymbol() {
        guard let name = selectedSymbol else { return }
        
        withAnimation {
            symbols.insert(name, at: 0)
        }
    }
    
    func remove(symbol: Symbol) {
        guard let index = symbols.firstIndex(of: symbol) else { return }
        
        withAnimation() {
            _ = symbols.remove(at: index)
        }
    }
}

extension ContentView {
    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }
}

#Preview {
    ContentView()
}

