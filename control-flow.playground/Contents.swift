//control flow
//you can for in with numeric ranges
for numbers in 1...5 {
    print("\(numbers) counting to five")
}

//you dont need to use the value of for
var sum = 0
var two = 2
for _ in 1...5 {
    sum += 2
}
print(sum)

//while loop
var isItBiggerThan10 = true
var number = 100
while number > 10 {
    print("Its not yet")
    number -= 10
}
print("Now it is")

//repeat while is the same thing of do-while
var numberFive = 5
repeat {
    numberFive += 1
} while numberFive < 10
            
//switch statement
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

//we dont need to use break in the switch, when it matches the switch stops immediately
//we can have two cases in one "case"
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

//control transfer statements: continue break fallthrough return throw
//fallthrough is a way to repeat the C switch that even the case matches what you need the switch statement will continue
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

//labeled statements
//you can give names to your statements to easily use break and continue
var fact1 = true
var n1 = 0
firstLoop: while fact1 {
    print("Ola")
    n1 += 1
firstIF: if n1 > 3 {
        print("Sim")
    break firstLoop
    }
}

//guard statement always has an else and if it coincides you can use the guard in the rest of the code
//you can see if your device is compatible to use some functionality

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
