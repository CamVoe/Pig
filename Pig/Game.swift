import SwiftUI
struct Game: View {
    @State var player1Score = 0
    @State var player2Score = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Player one: \(player1Score)")
                .font(.custom("Handlee-Regular", size: 50))
            Text("Player two: \(player2Score)")
                .font(.custom("Handlee-Regular", size: 50))
            Image("pips 1")
            HStack(spacing: 50) {
                Text("Spin")
                    .font(.custom("Handlee-Regular", size: 50))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .onTapGesture {
                        
                    }
                Text("Hold")
                    .font(.custom("Handlee-Regular", size: 50))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .onTapGesture {
                        
                    }
            }
            Text("")
            Text("Reset")
                .font(.custom("Handlee-Regular", size: 50))
                .padding(.horizontal, 98)
                .padding(.vertical, 8)
                .background(Color(.systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .onTapGesture {
                    
                }
        }
        .padding(.horizontal)
    }
}
#Preview {
    Game()
}
