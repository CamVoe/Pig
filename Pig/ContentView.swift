import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            Text("  Pig             game")
                .font(.custom("Handlee-Regular", size: 50))
                .padding(-60)
            Image("Happy Pig")
                .resizable()
                .frame(width: 416, height: 234) // 16:9
                .padding()
            Text("Play")
                .font(.custom("Handlee-Regular", size: 100))
                .padding(90)
            Text("How to play")
                .font(.custom("Handlee-Regular", size: 75))
                .padding(-10)
            Spacer()
        }
    }
}
#Preview {
    ContentView()
}
