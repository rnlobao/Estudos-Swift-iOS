//functions are special types of closures
//closures are kind of blocks that contains functionalities and can be used more than one time in your code
//the closure syntax is :
/*
 { (parameters) -> return type in
     statements
 }
 */

//all functions are closures but not all closures are functions
/*
 there are three forms of closures:
 1) GLobal functions: closures with name and dont capture values
 2) nested functions: closures with name and capture values
 3) closure expressions: unnamed and capture values
*/
//Closures sometimes make functions easier to use and more adaptable
//the in word mark the end of the parameters and the beginning of the code

//lets transform a function into a closure
func justAdd(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(justAdd(num1: 1, num2: 2))

let add = { (num1: Int, num2: Int) -> Int in
    return num1 + num2
}
print(add(1, 3))

//Another way to use the add function as a closure is passing the type of the variable and than naming it
let add1: (Int, Int) -> Int = { (num3, num4) in
    return num3 + num4
}
print(add1(20, 20))

let add2: (Int, Int) -> Int = {
    return $0 + $1
}
print(add2(3, 12))

//We can also create an array of functions, look
let multiplyy = { (num1: Int, num2: Int) -> Int in
    return num1 * num2
}

let dividee = { (num1: Int, num2: Int) -> Int in
    return num1 / num2
}

let arrOfFunc = [multiplyy, dividee]
let letsMultiply = arrOfFunc[0]
print(letsMultiply(2, 3))

//We can use _ to make a parameter of a function not mandatory so we can pass only the value
func printarNome(_ nome: String) -> String {
    return nome
}
print(printarNome("aaa"))

