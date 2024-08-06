import SwiftUI

struct FunFactsView: View {
    var allFunFacts = [
        "Henüz 18 yaşındayım",
        "Çıt kırıldım bir insanımdır",
        "Motorsikletten nefret ederim"
    ]
    
    @State private var funFact = ""
    
    var body: some View {
        ZStack {
            Color(.orange)
            
            VStack {
                Text("Biraz da Gerçekler")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                Text(funFact)
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(maxWidth: 400, minHeight: 300)
                
                
                Button("Rastgele bir gerçek göster") {
                    funFact = allFunFacts.randomElement() ?? ""
                }
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .cornerRadius(14)
                .font(.title3)
            }
            .padding()
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    FunFactsView()
}
