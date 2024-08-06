import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Group {
                    Text("Wolverine")
                        .font(.largeTitle)
                    
                    Text("Logan")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Group {
                        HStack {
                            Text("Herkes çok iyi bilir ki,")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding([.top, .bottom])
                            Text("Puroya bayılırım!")
                                .padding([.top, .bottom])
                        }
                    }
                    
                    Group {
                        Text("Süper Güçlerim:")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.bottom)
                        
                        VStack(alignment: .leading) {
                            Text("- Kendimi iyileştirme")
                                .padding(.bottom)
                            
                            Text("- İnsanüstü duyu, güç, çeviklik, dayanıklılık, uzun ömürlülük")
                                .padding(.bottom)
                            
                            Text("- Adamantium'la kaplanmış iskelet yapısı")
                                .padding(.bottom)
                            
                            Text("- Adamantium'la kaplanmış pençeler")
                                .padding(.bottom)
                            
                            Text("- Uzman dövüşçü, casus, kılıç ustası ve samuray")
                                .padding(.bottom)
                        }
                        .padding(.horizontal)
                    }
                    
                    Group {
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading) {
                                Text("Hayatım boyunca en çok minnettarlık duyduğum konu ise,")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Text("Böyle bir aileye sahip olmamdır!")
                            }
                            
                            Image("X-Men")
                                .resizable()
                                .scaledToFit()
                                .frame(alignment: .leading)
                                .cornerRadius(20)
                        }
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
        }
        .background(Color(.red))
    }
}

#Preview {
    StoryView()
}
