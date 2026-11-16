import SwiftUI
struct Game: View {
    @State var player1Turn = true
    @State var randomNumber = 0
    @State var runningScore = 0
    @State var player1Score = 0
    @State var player2Score = 0
    @State var toBeAddedScore = 0
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if player1Turn {
                Text("Player 1: your turn")
                    .font(.custom("Handlee-Regular", size: 40))
            }
            else {
                Text("Player 2: your turn")
                    .font(.custom("Handlee-Regular", size: 40))
            }
            if player1Turn {
                if runningScore > 0 {
                    Text("Player one: \(player1Score) + \(runningScore)")
                        .font(.custom("Handlee-Regular", size: 45))
                }
                else {
                    Text("Player one: \(player1Score)")
                        .font(.custom("Handlee-Regular", size: 45))
                }
            }
            else {
                Text("Player one: \(player1Score)")
                    .font(.custom("Handlee-Regular", size: 45))
            }
            if player1Turn == false {
                if runningScore > 0 {
                    Text("Player two: \(player2Score) + \(runningScore)")
                        .font(.custom("Handlee-Regular", size: 45))
                }
                else {
                    Text("Player two: \(player2Score)")
                        .font(.custom("Handlee-Regular", size: 45))
                }
            }
            else {
                Text("Player two: \(player2Score)")
                    .font(.custom("Handlee-Regular", size: 45))
            }
            Image("pips \(randomNumber)")
            HStack(spacing: 50) {
                Text("Spin")
                    .font(.custom("Handlee-Regular", size: 50))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .onTapGesture {
                        randomNumber = spinningDie(randomNumber: randomNumber)
                    }
                Text("Hold")
                    .font(.custom("Handlee-Regular", size: 50))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .onTapGesture {
                        if player1Turn {
                            player1Score += runningScore
                            runningScore = 0
                            randomNumber = 0
                            player1Turn.toggle()
                        }
                        else {
                            player2Score += runningScore
                            runningScore = 0
                            randomNumber = 0
                            player1Turn.toggle()
                        }
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
                    player1Turn = true
                    player1Score = 0
                    player2Score = 0
                    runningScore = 0
                    randomNumber = 0
                }
        }
        .padding(.horizontal)
    }
    func spinningDie (randomNumber: Int) -> Int {
        var randomNumber = Int.random(in: 1...6)
        if randomNumber == 1 {
            runningScore = 0
            player1Turn.toggle()
            return randomNumber
        }
        else {
            runningScore += randomNumber
            return randomNumber
        }
    }
}
#Preview {
    Game()
}
