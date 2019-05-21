//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]
print("The value at index 1 is: \(myNumberArray[1])")

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
var myarray = [1,2,3]
let myletarray = [4,5,6]

myarray.append(0)
//myletarray.append(7)


/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
var thisarray:[Int] = [1]

//thisarray.append(@"2")


/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */
var myDict: [String:Int]


/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
var thatarray = [1,2,3,4,5,6,7]
thatarray.append(8)
thatarray.insert(0, at: 0)
thatarray.remove(at: 7)
//thatarray.removeAll()
thatarray.reverse()
thatarray.count
thatarray.replaceSubrange(0...2, with: [10,11])


/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
var adict = ["one": 1, "two": 2]
print(adict["one"])
adict.removeValue(forKey: "one")
print(adict)
adict.isEmpty
adict.count

/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds `Strings`. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/
var datarray : [String] = []
datarray.append("John")
datarray.append("Karen")
datarray.append("Jane")

print(datarray[0],datarray[1],datarray[2])

/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */
var finalDict: [String: Int] = [:]

finalDict[datarray[0]] = 50000
finalDict[datarray[1]] = 70000
finalDict[datarray[2]] = 62000
finalDict["Bob"] = 45000

print(finalDict)
//: [Next](@next)
