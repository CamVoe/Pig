import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("  Pig             game")
                    .font(.custom("Handlee-Regular", size: 50))
                    .padding(-60)
                Image("Happy Pig")
                    .resizable()
                    .frame(width: 416, height: 234) // 16:9
                    .padding()
                NavigationLink(destination: Game()) {
                    Text("Play")
                        .font(.custom("Handlee-Regular", size: 100))
                        .foregroundColor(.primary)
                        .padding(90)
                }
                NavigationLink(destination: Game()) {
                    Text("How to play")
                        .font(.custom("Handlee-Regular", size: 75))
                        .padding(-10)
                        .foregroundColor(.primary)
                }
                Spacer()
            }
        }
    }
}
#Preview {
    ContentView()
}
