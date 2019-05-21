//: [Previous](@previous)
/*:
 ## Tuples
 Tuples are a type that can store multiple values into a group. You can also name each of the values if you choose to.
 */
// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age

/*:
 - Experiment:
 Try creating your own tuple. Mix in different variable types and try mixing some parameters with names and some without. Does it still work?
 */
var someT = (first: "hi", second: 11, 88.88)


/*:
 - Experiment:
 Try nesting tuples within one another. Create a tuple and add a tuple as one of its items.
 */
var someTT = (1,2,(3,4))
print(someTT.2.1)

/*:
 - Experiment:
 We took a look at tuple earlier during the 'Loops' section. Can you tell where it is being used? Experiment with the tuple names and even change up the interesting numbers to see what's possible.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
for (kind, numbers) in interestingNumbers {
    
}

/*:
 - Callout(Challenge):
 Create a function that takes three parameters, a name of type `String`, an age of type `Int`, and eligable of type `Bool`. The function returns a tuple of the name and age if eligable is true, otherwise, it will return `nil`.
 \
To test: call your new function with eligable true and false, and print the two values
 (Hint: Use optional return value and conditional unwrapping)
 */
func someF (name: String , age: Int, eligable: Bool) -> (String, Int)? {

    if eligable {
        return (name, age)
    } else {
        return nil
    }
}

if let (a,b) = someF(name: "name", age: 22, eligable: true) {
    print(a,b)
}

if let (c,d) = someF(name: "name2", age: 18, eligable: false) {
    
    print(c,d)
}

/*:
 ## Enums
 Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to you.
 
 - Note:
 Enums in Swift are *WAY* more powerful than in Objective-C. Enums in Swift can have methods and an assigned value that can be a string, a character, or a value of any integer or floating-point type.
 */

enum Months: Int{
    case January  = 1
    case Feburary
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    //...
    
    func abbreviatedStringForm() -> String {
        switch self {
        case .January:
            return "Jan"
        case .Feburary:
            return "Feb"
        case .March:
            return "Mar"
        case .April:
            return "Apr"
        case .May:
            return "May"
        case .June:
            return "Jun"
        case .July:
            return "Jul"
        case .August:
            return "Aug"
        case .September:
            return "Sep"
        case .October:
            return "Oct"
        case .November:
            return "Nov"
        case .December:
            return "Dec"
        }
    }
    
    func monthsApart(month: Months) -> Int {
        let num = abs(self.rawValue - month.rawValue)
        return num
        
    }
}

//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January
let marchMonth = Months.March

/*:
 - Experiment:
 Try adding '.rawValue' to the end of `Months.Januray` and `Months.March` above. What value did you get? How are these values assigned to the months?
 \
Try removing the '= 1' from the Months enum. Now what is different?
 */
Months.January.rawValue
Months.March.rawValue

/*:
 - Experiment:
 Finish the rest of the months for our `Months` enum. Then take a look at `abbreviatedStringForm()` function. Complete this function so that it returns the abbreviated form of the desired month as a String. ie: calling `Months.January.abbreviatedStringForm()` returns "Jan".
 */

Months.January.abbreviatedStringForm()

/*:
 - Experiment:
 Write a function within the enum that compares two months and determines how many months are they apart. For example: Comparing January to March would return to me '2', because January and March are two months apart.
 */
Months.June.monthsApart(month: .May)

/*:
 - Callout(Challenge):
 Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
*/
enum Game {
    
    case Rock
    case Paper
    case Scissors
    
    func winner(them: Game) {
        
        if self == .Rock {
            if them == .Paper {
                print("They win")
            }
            if them == .Scissors {
                print("you win")
            }
        }
        if self == .Paper {
            if them == .Scissors {
                print("They win")
            }
            if them == .Rock {
                print("you win")
            }
        }
        if self == .Scissors {
            if them == .Rock {
                print("They win")
            }
            if them == .Paper {
                print("you win")
            }
        }
    }
    
    func emoji() {
        switch self {
        case .Rock:
            print("👊")
        case .Paper:
            print("✋")
        case .Scissors:
            print("✌️")
        }
    }
}

Game.Rock.winner(them: .Scissors)
Game.Rock.emoji()
//: [Next](@next)
