/*: ## Instructions

In this exercise, you will modify your card game code to change how ties are resolved. Instead of letting the suits determine the winner, we will introduce a new rule:

- When a tie occurs, both players will set aside their top 3 cards and then challenge each other with their 4th card.
- The winner of this challenge takes all set-aside cards, plus both the winning hand and the tied hand (a total of 5 cards).

### Steps to Follow

1. **Migrate your code:** Start by copying your code from the previous exercise. You will build on it to implement the required modifications.

2. **Implement Optional Binding:** Modify the `Player` class to use optional binding in Swift. This will involve creating a struct for the player, which includes an optional property for the player's name. You will then use optional binding whenever you access this property.

3. **Use Property Observers:** Add a property observer to the player's hand property. This observer should print a message whenever an Ace is added to a player's hand.

4. **Use Enums:** Replace the current card representation with an enum. This enum should have cases for each card rank (Ace through King) and another enum for the suits (Spade, Heart, Club, Diamond). Update the rest of your code to work with this new card representation.

The goal of this exercise is to deepen your understanding of Swift programming concepts such as optional binding, property observers, and enums. Make sure to comment your code thoroughly as you work through these changes, explaining what each new piece of code does and why it's there.
*/


//: [Next](@next)
