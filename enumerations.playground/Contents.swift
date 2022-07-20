//enumerations

enum Bairros {
    case centro
    case rosaMaria
    case urcianoLemos
    case maroca
}

var meuBairro = Bairros.rosaMaria

switch meuBairro {
case .rosaMaria:
    print("Rosa Maria")
case .centro:
    print("Centro")
case .maroca:
    print("Maroca")
case .urcianoLemos:
    print("Urciano")
}

//or

switch meuBairro {
case .rosaMaria:
    print("Rosa Maria")
case .centro:
    print("Centro")
default:
    print("Another One")
}

//we can also iterate in Swift enum
enum animals: CaseIterable {
    case dog, cat, mouse, cow
}
print("we have \(animals.allCases.count) animals")
for species in animals.allCases {
    print(species)
}

//assigning values to an enum, it replaces if you put two
enum materiaCComp {
    case nome(String)
    case turma(Int)
}
var discreta = materiaCComp.nome("Matematica Dicreta")
discreta = .turma(12)
print(discreta)

//we can also have same type enums
enum salario: Double {
    case estagiario = 10
    case dev1 = 20
    case dev2 = 30
}

//enums with types and not defined will have implicity values
//nums will be increasing
enum nums: Int {
    case zero, one, two
}
print(nums.one.rawValue)
print(nums.two.rawValue)
//strings will have their own name
enum planets: String {
    case mercurio, jupiter, saturno
}
print(planets.mercurio)
let possiblePlanet = nums(rawValue: 1)

//we can also have an enumeration that one parameter of the case is the proper enumeration, causing a recursive enum, we have to add the indirect case
enum praias {
    case praia1(String)
    indirect case praia2(praias)
}

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
