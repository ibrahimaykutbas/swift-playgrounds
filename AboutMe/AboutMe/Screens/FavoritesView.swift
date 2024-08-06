import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favoriler")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 40)
            
            HStack {
                Text("Hobiler")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            .padding(.leading)
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    Text("🥊")
                        .font(.system(size: 48))
                    Text("🥋")
                        .font(.system(size: 48))
                    Text("🚘")
                        .font(.system(size: 48))
                }
            }
            .padding()
            
            Divider()
            
            HStack {
                Text("Yiyecekler")
                    .font(.title)
                
                Spacer()
            }
            .padding([.top, .leading])
            
            ScrollView(.horizontal) {
                HStack(spacing: 30) {
                    Text("🍺")
                        .font(.system(size: 48))
                    Text("🥃")
                        .font(.system(size: 48))
                    /*#-code-walkthrough(FavoritesView.editFood)*/
                    Text("🍖")
                        .font(.system(size: 48))
                    Text("🍗")
                        .font(.system(size: 48))
                    Text("🍎")
                        .font(.system(size: 48))
                    Text("🍣")
                        .font(.system(size: 48))
                }
            }
            .padding()
            
            Divider()
            
            DisclosureGroup {
                HStack(spacing: 30) {
                    Color.yellow
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.black
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.orange
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
                .padding(.vertical)
            } label: {
                Text("Favori renklerimi tahmin et!")
                    .font(.title2)
            }
            .padding()
            .accentColor(.orange)
        }
        .padding()
    }
}

#Preview {
    FavoritesView()
}
