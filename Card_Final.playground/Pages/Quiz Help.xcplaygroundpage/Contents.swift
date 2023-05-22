//: [Previous](@previous)

/*:
## Collections

Swift has three primary collection types, known as arrays, sets, and dictionaries.

- Arrays are ordered collections of values.
- Sets are unordered collections of unique values.
- Dictionaries are unordered collections of key-value associations.

Here's a quick example of each:

```swift
// Array
var someInts = [Int]()
someInts.append(10)
someInts.append(20)

// Set
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

// Dictionary
var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
```
 Each of these collection types are useful in different situations, and they each have different performance characteristics. It's important to understand when to use which type of collection.

 ## Unary, Binary, and Ternary Operators
 Swift supports most standard C operators and improves several capabilities to eliminate common coding errors. Operators are unary, binary, or ternary:

 Unary operators operate on a single target. For instance, ```-a``` negates the value of ```a```.
 Binary operators operate on two targets. For instance, ```a + b``` adds ```a``` and ```b```.
 Ternary operators operate on three targets. Swift has only one ternary operator, the ternary conditional operator ```(a ? b : c)```.
 ```swift
 let contentHeight = 40
 let hasHeader = true
 let rowHeight = contentHeight + (hasHeader ? 50 : 20)
 ```
 In this example, rowHeight is calculated using the ternary conditional operator.

 ## Constants and Variables
 Swift provides two ways to name values: constants and variables. When a value is constant, you declare it with the let keyword; when it’s variable, you use the var keyword. Here's an example:
```swift
 let maximumNumberOfLoginAttempts = 10
 var currentLoginAttempt = 0
 ```
 In Swift, any data type can be stored in a collection, and the type of items must be clear. If the type is not specified, Swift uses type inference to detect the data type.

 ## Different types of Data, Optionals, Explicit and Implicit Declarations
 Swift has strong typing. Whenever you work with a variable, Swift uses type inference to assign the variable a type. However, when the value's type is not clear from the context, you need to specify the type explicitly.

 Swift also introduces Optionals type, which handles the absence of a value. Optionals say either "there is a value, and it equals x" or "there isn't a value at all".

```swift
 var stringToDisplay: String? = "Hello, world!"
```
 If you define a variable as optional, then you can use ```if-let``` or ```guard-let``` to unwrap the optional value.

```swift
 if let name = optionalName {
     print("Hello, \(name)")
 } else {
     print("Hello, World!")
 }
 ```
 In this case, optionalName is an optional variable and the ```if-let``` is used to unwrap the optional value of optionalName.

 ## Type Casting
 Type casting in Swift is implemented with the is and as operators. These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type.

 You can use type casting with a hierarchy of classes and subclasses to check the type of a class instance or to downcast a class instance to its subclass.

```swift
 class MediaItem {
     var name: String
     init(name: String) {
        
         self.name = name
     }
 }

 class Movie: MediaItem {
     var director: String
     init(name: String, director: String) {
         self.director = director
         super.init(name: name)
     }
 }

 let someMovie = Movie(name: "Star Wars", director: "George Lucas")

 if someMovie is Movie {
     print("The instance is of Movie type")
 }
 ```
 In this example, the is operator is used to check whether someMovie is of type Movie.




 ## Protocols and Delegates
 Protocols define a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. They can be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements.

```swift
 protocol SomeProtocol {
     var mustBeSettable: Int { get set }
     var doesNotNeedToBeSettable: Int { get }
 }

 class SomeClass: SomeProtocol {
     var mustBeSettable: Int
     var doesNotNeedToBeSettable: Int
 }
```
 In this example, SomeClass adopts SomeProtocol and implements the required properties.

 Delegates are a design pattern that allows one object to send messages to another object when a specific event happens. They can be used to customize the behavior of a function or a class.

 ## Error Handling
 Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.

```swift
 enum PrinterError: Error {
     case outOfPaper
     case noToner
     case onFire
 }
```
 func send(job: Int, toPrinter printerName: String) throws -> String {
     if printerName == "Never Has Toner" {
         throw PrinterError.noToner
     }
     return "Job sent"
 }
```
 In this example, the send(job:toPrinter:) function is marked with the throws keyword to indicate that it can throw an error of type PrinterError.
 */




 

//: [Next](@next)
