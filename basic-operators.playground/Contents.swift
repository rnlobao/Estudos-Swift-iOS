//basic Operators
//we have unary, binary and ternary operator (the only one is ternary conditional operator)

//the operators are the same like in other languages + - * / % = ==
let myName = "Robson " + "Novato"
print(myName)

//we have the minus unary operator that is used to *-1 a number
let numberTow = 2
let newNumber = -numberTow
print(newNumber)
let newNewNumber = -newNumber
print(newNewNumber)

//we have the unary plus operator that actually dont do anything because its *+1

//comparison is the same thing, but we can compare tuples, comparing item to item
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"")

//the ternary conditional operator
let question = true
var answer1: Int
if question {
    answer1 = 1
} else {
    answer1 = 2
}
question ? print("answer is 1") : print("answer is 2")


//range operator: 1...5 one to five including one and five
// 1..<5 one to five excluding five
//you can use only one side if you wanna go until de rnage finishes ...5 or 0...

// && || ! are the same as in c
