import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            Image("Happy Pig")
                .resizable()
                .frame(width: 450, height: 450)
        }
    }
}
#Preview {
    ContentView()
}
