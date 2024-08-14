import SwiftUI

struct BasicGridView: View {
    var body: some View {
        Grid(alignment: .top, horizontalSpacing: 20, verticalSpacing: 20) {
            GridRow {
                Color.mint
                Color.orange
                Color.pink
            }
            
            GridRow {
                Color.blue
                Color.teal
            }
            
            GridRow {
                GridRow(alignment: .center) {
                    Text("Text")
                        .gridCellAnchor(.bottomLeading)
                    
                    Text("Text")
                        .gridCellAnchor(.bottomTrailing)
                }
            }
        }
        .gridCellColumns(2)
        .padding()
    }
}

#Preview {
    BasicGridView()
}
