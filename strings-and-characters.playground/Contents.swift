//string and characters
//as said we can use more than one line with:
var quote = """
This is a phrase
witho two lines
"""

//this both code result the same
var string1 = ""
var string2 = String()

//we can check if they are empty with the function

if string1.isEmpty {
    print("is empty")
}

//you can create a string with characters
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)
print(catString)

//you can go through a string too
for character in "Dog!" {
    print(character)
}

//there are three ways of concatenating strings (+ += .append())
let string12 = "hello"
let string21 = " there"
var welcome = string12 + string21

var instruction = "look over"
instruction += string21

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//string interpolation is using \()
var myAge = 19
print("My age is \(myAge)")

//you can count string with .count
var myDogsName = "George Lionel Cristiano III"
print(myDogsName.count)

//string indice, it doesnt use int to dictate which position is a char in the string
//you can use startIndex to take the first char
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
//or endIndex to take the last char
greeting[greeting.index(before: greeting.endIndex)]
//you can use after: and before: too
greeting[greeting.index(after: greeting.startIndex)]
//or you can set an index e receive it value using the startIndex and the offsetBy to dictate which position it will be
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
//we can also use indices to see all chars in a string in this way:
for index in greeting.indices {
    print(greeting[index])
}
//we can insert a char in a string in this way
var helloMyFriend = "Hello my "
helloMyFriend.insert("f", at: helloMyFriend.endIndex)
helloMyFriend.insert(contentsOf: "riend", at: helloMyFriend.endIndex)
//we can also remove at
helloMyFriend.remove(at: helloMyFriend.index(helloMyFriend.startIndex, offsetBy: 2))
