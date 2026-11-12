import SwiftUI
struct HowToPlay: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("How to play")
                .font(.custom("Handlee-Regular", size: 75))
            Text("• Each turn, a player repeatedly rolls a die until a 1 is rolled or the player decides to hold:")
                .font(.custom("Handlee-Regular", size: 28))
            Text("• If the player rolls a 1, they score nothing and it becomes the next player's turn.")
                .font(.custom("Handlee-Regular", size: 28))
            Text("• If the player rolls any other number, it is added to their turn total and the player's turn continues.")
                .font(.custom("Handlee-Regular", size: 28))
            Text("• If a player chooses to hold, their turn total is added to their score, and it becomes the next player's turn.")
                .font(.custom("Handlee-Regular", size: 28))
            Text("• The first player to score 100 or more points wins.")
                .font(.custom("Handlee-Regular", size: 28))
        }
        .padding(.horizontal)
    }
}
#Preview {
    HowToPlay()
}
