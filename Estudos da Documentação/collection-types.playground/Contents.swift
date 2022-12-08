//we have 3 types of collection types
//arrays, sets, dictionaries
//arrays are ordered collection of values
//sets are unordered collection of unique values
//dictionaries are unordered collections of key values associations

//creating an empty array
var someNames: [String] = []

//to add an item
someNames.append("Luis")

//clear the array
someNames = []

//you can create an array with the same values in this way
var onlyRobsons = Array(repeating: "Robson", count: 3)
print(onlyRobsons)

//changing an index
onlyRobsons[0] = "not you"
print(onlyRobsons)

//you can insert at
onlyRobsons.insert("carlos", at: 1)
print(onlyRobsons)

//removing and removing in the end
onlyRobsons.remove(at: 1)
print(onlyRobsons)
onlyRobsons.removeLast()
print(onlyRobsons)

//iterating in an array
let fruits = ["bananas", "apples", "watermelon", "pear", "orange"]
for names in fruits {
    print(names)
}
//you can also take the number and the value with .enumerated()
for (index, fruit) in fruits.enumerated() {
    print("fruta numero \(index+1) é \(fruit)")
}

//sets are used when you wanna have sure that wont be any equal values and the itens must be hashable
//creating an empty set
var cars = Set<String>()
var cars2: Set<String> = ["Fiat", "Honda", "Wolks", "Tesla"]
var cars3: Set = ["Hyundai", "Ford", "Subaru", "Toyota"] //Swift type inference

//in sets we inset itens
cars2.insert("Harley")

//to check if contains an item
cars3.contains("Subaru") ? print("sim") : print("nao")

//you can sort a set to iterate by using
for models in cars2.sorted() {
    print(models)
}

/*
 Use the intersection(_:) method to create a new set with only the values common to both sets.

 Use the symmetricDifference(_:) method to create a new set with values in either set, but not both.

 Use the union(_:) method to create a new set with all of the values in both sets.

 Use the subtracting(_:) method to create a new set with values not in the specified set.
 */
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

//Dictionaries
//Empty dictionary
var nameAndAge: [String: Int] = [:]

//create a new item and edit it in the dictionary
nameAndAge["Robson"] = 19
print(nameAndAge)
nameAndAge["Robson"] = 21
print(nameAndAge)

//you can remove an item by giving it nil
nameAndAge["Robson"] = nil
print(nameAndAge)

//you can also updateValue() and removeValue()
//there are three ways of iterating in a dictinary
let carModel = ["Fiat": "Uno", "Toyota": "Hilux", "Wolks": "Gol"]
for (brand, modelOfCar) in carModel {
    print("The \(brand) has the \(modelOfCar)")
}

for brand in carModel.keys {
    print(brand)
}

for modelOfCar in carModel.values {
    print(modelOfCar)
}




