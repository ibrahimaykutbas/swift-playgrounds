import SwiftUI

struct CoverView: View {
    var body: some View {
        VStack {
            Text("X-MEN")
                .font(.custom("American Typewriter", size: 50))
                .foregroundColor(.black)
            
            Image("Wallpaper")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding(.horizontal)
        }
    }
}

#Preview {
    CoverView()
}
