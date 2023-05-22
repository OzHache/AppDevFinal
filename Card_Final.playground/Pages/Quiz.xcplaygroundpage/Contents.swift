//: [Previous](@previous)
/*:
# Quiz Application

In this assignment, you are tasked with creating a simple Quiz Application using Swift. This application will have multiple types of questions including multiple-choice questions and true or false questions.

## Classes and Structs

### `Question`
This class is the base class for all types of questions. It should have a property `text` which contains the question text.

### `MultipleChoiceQuestion`
This class inherits from `Question` and represents a multiple-choice question. It should have an additional property `options` which is an array of strings representing the possible answers, and a property `correctAnswer` which is the correct option.

### `TrueOrFalseQuestion`
This class also inherits from `Question` and represents a true or false question. It should have a property `correctAnswer` which is the correct answer ("true" or "false").

### `Quiz`
This class represents a quiz. It should have a property `questions` which is an array of `Question` objects. It should also have a method `start()` that starts the quiz, asking each question one by one and keeping track of the score.

### `QuizApp`
This class represents the overall quiz application. It should have a property `quizzes` which is an array of `Quiz` objects. It should also have a method `start()` that prompts the user to select a quiz and then starts that quiz.

## Instructions

1. Start by defining the `Question` class.

    ```swift
    class Question {
        //: See Instruction 1.a
    }
    ```

    1.a. Add a `text` property to the `Question` class. This property should be a string that holds the text of the question.

    ```swift
    //: See Instruction 1.b
    ```

2. Define the `MultipleChoiceQuestion` class that inherits from `Question`.

    ```swift
    class MultipleChoiceQuestion: Question {
        //: See Instruction 2.a
    }
    ```

    2.a. Add an `options` property to the `MultipleChoiceQuestion` class. This should be an array of strings that holds the multiple-choice options for the question.

    ```swift
    //: See Instruction 2.b
    ```

    2.b. Add a `correctAnswer` property to the `MultipleChoiceQuestion` class. This should be a string that holds the correct answer to the question.

    ```swift
    //: See Instruction 2.c
    ```

3. Define the `TrueOrFalseQuestion` class that also inherits from `Question`.

    ```swift
    class TrueOrFalseQuestion: Question {
        //: See Instruction 3.a
    }
    ```

    3.a. Add a `correctAnswer` property to the `TrueOrFalseQuestion` class. This should be a string that holds the correct answer ("true" or "false") to the question.

    ```swift
    //: See Instruction 3.b
    ```

 4. Define the `Quiz` class.

     ```swift
     class Quiz {
         //: See Instruction 4.a
     }
     ```

     4.a. Add a `questions` property to the `Quiz` class. This should be an array of `Question` objects that make up the quiz.

     ```swift
     //: See Instruction 4.b
     ```

     4.b. Add a `start()` method to the `Quiz` class. This method should loop through the `questions` array and ask each question in turn.

     ```swift
     //: See Instruction 4.c
     ```

     4.c. Inside the `start()` method, add a mechanism to keep track of the number of correct answers. Each time a question is answered correctly, this count should be incremented.

     ```swift
     //: See Instruction 4.d
     ```

     4.d. At the end of the `start()` method, after all questions have been asked, print the final score to the console. The score should be the count of correct answers from step 4.c.

5. Define the `QuizApp` class.

    ```swift
    class QuizApp {
        //: See Instruction 5.a
    }
    ```

    5.a. Add a `quizzes` property to the `QuizApp` class. This should be an array of `Quiz` objects.

    ```swift
    //: See Instruction 5.b
    ```

    5.b. Add a `start()` method to the `QuizApp` class. This method should prompt the user to select a quiz from the `quizzes` array and then start that quiz.

    ```swift
    //: See Instruction 5.c
    ```

6. Finally, instantiate a `QuizApp` object and call its `start()` method to run the quiz application.

    ```swift
    //: See Instruction 6.a
    ```
*/

import Foundation

// Base class for all questions
class Question {
    var text: String
    var correctAnswer: String

    init(text: String, correctAnswer: String) {
        self.text = text
        self.correctAnswer = correctAnswer
    }

    // Placeholder for method to display question - Instruction 1
    func display() {
        //: See Instruction 1
    }

    // Placeholder for method to check answer - Instruction 2
    func checkAnswer(_ answer: String) -> Bool {
        //: See Instruction 2
        return false
    }
}

// Class for multiple choice questions
class MultipleChoiceQuestion: Question {
    var options: [String]

    init(text: String, options: [String], correctAnswer: String) {
        self.options = options
        super.init(text: text, correctAnswer: correctAnswer)
    }

    // Placeholder for method to display options - Instruction 1.a
    override func display() {
        //: See Instruction 1.a
    }
}

// Class for true or false questions
class TrueOrFalseQuestion: Question {
    // No additional properties or methods needed
}

// Class for a quiz
class Quiz {
    var questions: [Question]
    var score: Int

    init(questions: [Question]) {
        self.questions = questions
        self.score = 0
    }

    // Placeholder for method to start quiz - Instruction 3
    func start() {
        //: See Instruction 3
    }

    // Placeholder for method to ask question - Instruction 4
    func askQuestion(_ question: Question) {
        //: See Instruction 4
    }

    // Placeholder for method to validate answer - Instruction 5
    func validateAnswer(_ answer: String) -> Bool {
        //: See Instruction 5
        return false
    }

    // Placeholder for method to update score - Instruction 6
    func updateScore(_ correct: Bool) {
        //: See Instruction 6
    }
}

// Class for the Quiz App
class QuizApp {
    var quizzes: [Quiz]

    init(quizzes: [Quiz]) {
        self.quizzes = quizzes
    }

    // Placeholder for method to start app - Instruction 7
    func start() {
        //: See Instruction 7
    }

    // Placeholder for method to select quiz - Instruction 8
    func selectQuiz() -> Quiz? {
        //: See Instruction 8
        return nil
    }
}

//: Code to Run the Project

let quizApp = QuizApp(quizzes: []) // Empty list of quizzes to start
quizApp.start()
//: To run this project you can copy all the code over to https://www.programiz.com/swift/online-compiler/
//: Type 1 then return
//:It will give you a 2/2 if you input Paris, followed by false
//:  [Next](@next)
