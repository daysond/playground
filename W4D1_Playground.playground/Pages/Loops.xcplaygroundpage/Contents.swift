//: [Previous](@previous)
/*:
 ## For Loops

 For loops are a way to repeat a set of statements a certain number of times.
 
 - Note:
 The traditional 'C-style' loop does not exists in Swift anymore: `for ( int i = 0; i<10; i++ )`. Instead, you create for loops that perform your set of statements for each item in a range or collection.
 */

// This is our collection
let pets = ["dog", "cat", "pig", "parrot"]

// This is the for loop grabbing each item and performing actions
for pet in pets {
    print(pet)
}

/*:
 We can declare a for loop using a range with a lower bound and upper bound
 - Example: `2...5` or `2..<5`
 */

for i in 2...5 {
    print("My Current Index: \(i)")
}

/*:
 - Experiment:
 What's the difference between `2...5` vs `2..<5`?
 */
// 2 3 4 5
//2 3 4

/*:
 - Experiment:
  Use a ranged for loop to search through the 'pets' array above for the word 'pig' and print out its index.
 */
for i in 0..<pets.count {
    
    if pets[i] == "pig" {
        print(i)
    }
}

/*:
 - Experiment:
 Create an array of random numbers of your choosing then make a for loop that adds 1 to each number.
 */
var myarr = [25,67,34,6,23,1,89]
for i in 0..<myarr.count {
    
    myarr[i] = myarr[i] + 1
    
}
print(myarr)
/*:
 - Experiment:
 Take a look at the example below. Modify the code so that it searches for both the largest and smallest number. Then print out the result.
 */

/*:
 Hint: Use an `_` so that you can avoid making another unecessary variable for the iteration value.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
var smallest = 99
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
        if number < smallest {
            smallest = number
        }
    }
}
print(smallest)
/*:
 - Callout(Challenge):
 Given a number `N`, from 0 to `N`, add up all the odd numbers and print out the result.
 ie: N = 5, 1+3+5 = 9
 */
var sum = 0
for i in 0...5 {
    
    if i%2 == 1 {
        sum = sum + i
    }
    print(sum)
}

/*:
 - Callout(Challenge):
 Given the following array of numbers, determine the frequency of each number using a for loop.
 
 ie: [1, 2, 1, 3, 3, 1, 1, 1]
 
 1: Occurs 5 times
 
 2: Occurs 1 time
 
 3: Occurs 2 times
 */

let numberArray = [1, 4, 5, 5, 5, 3, 2, 1, 4, 2, 2, 2, 1]
var count1 = 0
var count2 = 0
var count3 = 0
var count4 = 0
var count5 = 0

for i in numberArray {
    
    switch i {
    case 1:
        count1 = count1 + 1
    case 2:
        count2 = count2 + 1
    case 3:
        count3 = count3 + 1
    case 4:
        count4 = count4 + 1
    case 5:
        count5 = count5 + 1
    default:
        break
    }

    
}



//: [Next](@next)
