//starting we have types
//let are constants, cannot be changed
let contantVariable = "Nome"

//var are mutable
var myName = "Robson"
myName = "Robson Novato"

//type annotation is when we declare the type of the variable
var nome: String
var idade: Int
var rafael, lucas, pedro: String

//print value from a variable
print("Name of the student: \(myName)")

//String with more than one line
var quote = """
What im tryna say is
I really like soccer
"""

//semicolonos are not necessary but you can use if you want
//use semicolon if you pass more than one order inline
print("Hello"); print("World")

//the int type is used for non decimal numbers
//you can use UInt type that discovers which type is your computer and use it, like 32 ou 64 bit platform
var myAgeInPlatform: UInt
myAgeInPlatform = 19

//floats and doubles have decimal numbers
//floats has 6 decimal digits (32 bit)
//double has 15 decimal digits (64 bit)

var veryAccurateValue: Double
var notVeryAccurateValue: Float

//swift is type safe which means that the compiler search if there are unmatch types in code with type checks
//type inference is the way swift knows the type of the variable you declared
//swift always infer a number is double if there are decimal numbers
//literal value is a value assigned to a variable that appears directly in your source code
//you can use _ in numeric literals to better understand the number
let anotherPi = 3 + 0.14159
var oneMillion: Int = 1_000_000

//you can covert a type using Int(the variable)
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine


//typealias is a way to rename one type in your code
typealias CountryNames = UInt8
var angolaNumber: CountryNames = 12

//bool are just the same
var amIABoy: Bool
amIABoy = true
let amIAmerican = false

//tuples, they can be of any value and have as many itens as you want
var nameAndAge = (name: "Robson", age: 19)
print("His name is \(nameAndAge.name)")

//about optionals
//it means that in this variable might ou might not have a value inside of it
//we cant assign value nil to a variable that is not an optional
var someString = "Hello"
var theNewInt = Int(someString)
print(theNewInt)
var myAnswer: Int? //this is automatically nil
//to inform the compiler that you are sure about the existence of a value you can force unwrap it using !
theNewInt = 9
print(theNewInt!)

//optional binding
//this is a way to find if there is a value inside an optional variable and use it in a limited brackets
var stuartName: String?
if let hisName = stuartName {
    print(hisName)
}

stuartName = "Stuart"
if let hisName = stuartName {
    print(hisName)
}

//implicity unwrapped optionals
//this is used when we have sure that the optional variable will have a valid value, it can be thought as giving permission to the optional to be force unwrapped
let tenhoCerteza: String!
//print(tenhoCerteza)
tenhoCerteza = "Que sim"
print(tenhoCerteza)

//Error Handling
enum SandwichError {
    case outOfCleanDishes
    case missingIngredients
}
func makeASandwich() throws {}
func eatASandwich() {}
func washDishes() {}
func buyGroceries() {}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients {
    buyGroceries()
}

//For making sure that a value is ok to use in your code you can use assertions or preconditions
//Assertions happens in debug builds
//Preconditions happens in debug and production builds






