import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Wolverine")
                .font(.custom("American Typewriter", size: 40))
            
            Image("Wolverine")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(
                    Circle()
                        .stroke(.yellow, style:                 StrokeStyle(lineWidth: 14))
                )
            
            Text("Logan")
                .font(.custom("American Typewriter", size: 30))
                .foregroundColor(.black)
                .padding(.top, 4)
                .background(Color(.white))
                .padding()
            
            HStack {
                Image(systemName: "chevron.right")
                    .foregroundColor(.black)
                
                Text("X-MEN")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
            }
        }
    }
}


#Preview {
    HomeView()
}
