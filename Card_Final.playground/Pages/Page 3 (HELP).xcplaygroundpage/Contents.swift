//: [Previous](@previous)
/*: # Help Section

## Optional Binding

Optional binding in Swift is a process that checks if an optional contains a value or not. If it does contain a value, that value is made available as a temporary constant or variable.
*/
var optionalName: String? = "Alice"

if let name = optionalName {
    print("Hello, \(name)")
} else {
    print("No name provided")
}
//: In this example, `optionalName` is an optional string that may or may not contain a value. By using optional binding (`if let name = optionalName`), we can check if `optionalName` does have a value, and if so, assign that value to the constant `name` for use within the first branch of the `if` statement.

/*: ## Property Observers

Property observers in Swift monitor changes in a property's value. They're called every time a property's value is set and can be used to perform work before or after the value changes. Swift provides two kinds of property observers: `willSet` and `didSet`.
 */
var score = 0 {
    willSet(newScore) {
        print("About to set score to \(newScore)")
    }
    didSet {
        print("Score changed by \(score - oldValue)")
    }
}
score = 10

/*: In this example, the `score` variable has two property observers. The `willSet` observer is called just before the value of `score` is changed and it prints a message that includes the new value. The `didSet` observer is called immediately after the new value is stored. It calculates and prints the change in `score` from its old value to its new value.
*/
/*: ## Enums
 Enums, or enumerations, are a way in Swift to group related values together. Enums are first-class types in Swift and adopt many features traditionally supported only by classes, such as computed properties for instance.
 */
enum Direction {
    case north
    case south
    case east
    case west
}

var heading = Direction.north
//: In this example, `Direction` is an enumeration that has four possible values: `north`, `south`, `east`, and `west`. We then declare a variable `heading` of type `Direction` and set its value to `.north`. When accessing an enum's value, we use the dot syntax (`.`) followed by the case value.



//: [Next](@next)
