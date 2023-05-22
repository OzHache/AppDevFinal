/*: ## Instructions:
 You are required to thoroughly understand and document this code. This involves two main steps:

1. **Commenting the Code**: For every class, function, loop, initializer, and conditional statement (if/else), provide a comment that explains its purpose and functionality. Use the following sentence frames to guide your explanations:

   - For Classes: `// This Class deals with ___`
   - For Functions: `// This Function returns__ and its primary purpose is to ___`
   - For Conditional Statements: `// If ___ , this should happen ___`

   These comments should be placed directly above the respective code segment.

2. **Narrative Explanation**: Starting from line 141, write out a detailed step-by-step explanation of what the code is doing. Think of it as a narrative that walks through the code, explaining what happens at each line or block of code.

Please remember, the goal of this exercise is to develop your understanding of the code and to communicate that understanding clearly and concisely through your comments and explanations. Good luck!
*/

import Foundation
import GameplayKit

// This global variable Suits represents ___
public var Suits = [1:"Spade",2:"Heart", 3:"Club",4:"Diamond"]

// This Class deals with ___
public class Deck {
    var Cards: Array<Card> = []
    // This initializer function is responsible for ___
    init() {
        // In this loop, we are ___
        for i in 1...13{
            for j in 1...4{
                // Here, we are ___
                Cards.append(Card(val: i,suit: j))
            }
        }
        // Here, we are ___
        shuffle()
    }
    // This Function does ___ and its primary purpose is to ___
    func shuffle() {
        // Here, we are ___
        Cards.shuffle()
    }
}

// This Class deals with ___
public class Card{
    var Value : Int = 0
    var Suit: Int = 1
    // This initializer function is responsible for ___
    init(val: Int, suit: Int){
        // Here, we are ___
        Value = val
        Suit = suit
    }
    // This Function returns ___ and its primary purpose is to ___
    func Description ()->String{ return"a \(Value) of \(Suits[Suit]!)s"}
}

// This Class deals with ___
public class Player{
    public var hand : Array<Card> = []
}

// This Class deals with ___
public class Game{
    var Players:Array<Player> = []
    var deck = Deck()
    // This initializer function is responsible for ___
    init() {
        // In this loop, we are ___
        for _ in 1...2{
            // Here, we are ___
            let newPlayer = Player()
            Players.append(newPlayer)
        }
    }
    // This Function does ___ and its primary purpose is to ___
    func startGame(){
        // If ___, this should happen ___
        if deck.Cards.count < 26 * Players.count{
            print("Not enough cards in the deck.")
            return;
        }
        // Here, we are ___
        deck.shuffle()
        // In this loop, we are ___
        for _ in 1...26 {
            for player in Players{
                // Here, we are ___
                player.hand.append(deck.Cards[0])
                deck.Cards.remove(at: 0)
            }
        }
    }
    // This Function does ___ and its primary purpose is to ___
    func compare() {
        // Here, we are ___
        print("\(Players[0].hand[0].Description()) vs \(Players[1].hand[0].Description())")
        // If ___, this should happen ___
        if Players[0].hand[0].Value > Players[1].hand[0].Value {
            // Here, we are ___
            Players[0].hand.append(Players[1].hand[0])
            Players[0].hand.append(Players[0].hand[0])
            Players[0].hand.remove(at: 0)
            Players[1].hand.remove(at: 0)
            print("Player 1 takes the hand")
        }
        // Else if ___, this should happen ___
        else if Players[0].hand[0].Value < Players[1].hand[0].Value {
            // Here, we are ___
            Players[1].hand.append(Players[0].hand[0])
            Players[1].hand.append(Players[1].hand[0])
            Players[1].hand.remove(at: 0)
            Players[0].hand.remove(at: 0)
            print("Player 2 takes the hand")
        }
        // Else ___, this should happen ___
        else {
            // If ___, this should happen ___
            if Players[0].hand[0].Suit > Players[1].hand[0].Suit {
                // Here, we are ___
                Players[0].hand.append(Players[1].hand[0])
                Players[0].hand.append(Players[0].hand[0])
                Players[0].hand.remove(at: 0)
                Players[1].hand.remove(at: 0)
                print("Player 1 takes the hand (won by suit)")
            }
            // Else ___, this should happen ___
            else {
                // Here, we are ___
                Players[1].hand.append(Players[0].hand[0])
                Players[1].hand.append(Players[1].hand[0])
                Players[1].hand.remove(at: 0)
                Players[0].hand.remove(at: 0)
                print("Player 2 takes the hand (won by suit)")
            }
        }
    }
}

// Here, we are ___
var game = Game()
// Here, we are ___
game.startGame()
var i = 1
var lowest = 26
let maxRounds = 200
// In this loop, we are ___
while lowest > 0 && i <= maxRounds {
    // Here, we are ___
    i += 1
    for player in game.Players{
        // If ___, this should happen ___
        if (player.hand.count-1 < lowest){
            lowest = player.hand.count-1
        }
    }
    // Here, we are ___
    game.compare()
}
// If ___, this should happen ___
if (game.Players[0].hand.count ==  52){
    print("Player 1 Wins after \(i) hands!!!!")}
// Else ___, this should happen ___
else{print("Player 2 Wins after \(i) hands!!!!")}

//: [Next](@next)

