//functions
//about function is the same thing everytime

func printarMeuNome() -> String {
    return "Robson"
}
print(printarMeuNome())

//you can also have a function that returns a tuple
func twoInt() -> (value1: Int, value2: Int) {
    return (1, 2)
}
print("Meu primeiro valor é: \(twoInt().value1)")

//you can also give default parameter value
func idadeDosCria(idade1: Int = 1, idade2: Int) -> Int {
    return idade1
}

//we also have variadic argument it happens when we dont know how many variables we are gonna use
func media(idade: Int...) -> Double {
    var total: Int = 0
    for separados in idade {
        total += separados
    }
    return Double(total) / Double(idade.count)
}
media(idade: 1, 2, 3, 4, 5, 6)

//inout is the way to make a parameter of your function mutable
func weCanChangeParameters(nome: inout String) -> String {
    nome = "Tiago"
    return nome
}
var meuNome: String = "Robson"
weCanChangeParameters(nome: &meuNome)

//we can create types in this way
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
//read as Define a variable called mathFunction, which has a type of ‘a function that takes two Int values, and returns an Int value.’ Set this new variable to refer to the function called addTwoInts



