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




