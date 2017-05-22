
//:## Instructions: Comment every line of code here as to what is going on during each step. The write out the steps as if starting from line 93 for everything that happens.

import Foundation
import GameplayKit
public var Suits = [1:"Spade",2:"Heart", 3:"Club",4:"Diamond"]
public class Deck {
    var Cards: Array<Card> = []
    init() {
        for i in 1...13{
            for j in 1...4{
                Cards.append(Card(val: i,suit: j))
            }
        }
        shuffle()
    }
    func shuffle() {
        Cards = GKRandomSource.sharedRandom().arrayByShufflingObjects(in:Cards) as! Array<Card>
    }
}
public class Card{
    var Value : Int = 0
    var Suit: Int = 1
    init(val: Int, suit: Int){
        Value = val
        Suit = suit
    }
    func Description ()->String{ return"a \(Value) of \(Suits[Suit]!)s"}
}

public class Player{
    public var hand : Array<Card> = []
}
    
public class Game{
    var Players:Array<Player> = []
    var deck = Deck()
    init() {
        for _ in 1...2{
            let newPlayer = Player()
            Players.append(newPlayer)
        }
    }
    func StartGame(){
        deck.shuffle()
        for _ in 1...26 {
            for player in Players{
                player.hand.append(deck.Cards[0])
                deck.Cards.remove(at: 0)
            }
        }
    }
    func comapare(){
        print("\(Players[0].hand[0].Description()) vs \(Players[1].hand[0].Description())")
        if (Players[0].hand[0].Value>Players[1].hand[0].Value){
            
            Players[0].hand.append(Players[1].hand[0])
            Players[0].hand.append(Players[0].hand[0])
            Players[0].hand.remove(at: 0)
            Players[1].hand.remove(at: 0)
            print("Player 1 takes the hand")
            return
        }
        else if(Players[0].hand[0].Value == Players[1].hand[0].Value){
             if (Players[0].hand[0].Suit > Players[1].hand[0].Suit){
                
                Players[0].hand.append(Players[1].hand[0])
                Players[0].hand.append(Players[0].hand[0])
                Players[0].hand.remove(at: 0)
                Players[1].hand.remove(at: 0)
                print("Player 1 takes the hand")
                return
            }
             else{
                Players[1].hand.append(Players[0].hand[0])
                Players[1].hand.append(Players[1].hand[0])
                Players[1].hand.remove(at: 0)
                Players[0].hand.remove(at: 0)
                print("Player 2 takes the hand")
                return
            }
            
        }
        else {
            Players[1].hand.append(Players[0].hand[0])
            Players[1].hand.append(Players[1].hand[0])
            Players[1].hand.remove(at: 0)
            Players[0].hand.remove(at: 0)
            print("Player 2 takes the hand")
            return
        }
    }
}
var game = Game()
game.StartGame()
var i = 1
var lowest = 26
while lowest > 0 {
    i += 1
    for player in game.Players{
        if (player.hand.count-1 < lowest){
            lowest = player.hand.count-1
        }
    }
    game.comapare()
}
if (game.Players[0].hand.count ==  52){
    print("Player 1 Wins after \(i) hands!!!!")}
else{print("Player 2 Wins after \(i) hands!!!!")}

//: [Next](@next)