// Sobre generics

import Foundation
import UIKit

// nos temos a palavra inout que faz com oq é feito dentro da funcao fique na de fora

var valorTotal = 0

func somarDez(_ a: inout Int) {
    a += 10
}

somarDez(&valorTotal)

print(valorTotal)

// pra criar uma funcion generic, veja que nao precisamos identificar o type dele:

func printarONecessario<T>(nome: T) {
    print(nome)
}

var emString = "Oi"
var emInt = 10

printarONecessario(nome: emInt)
printarONecessario(nome: emString)


// O T acima funciona como um placeholder para um tipo
// Interessante lembrar que views na telam funcionam como uma pilha LIFO o ultimo a entrar é o primeiro a sair, ou seja, so conseguimos dar um pop na primeira view que estiver na pilha

//Outra coisa é que quando usamos uma estrutura baseada em valor como structs e enums, nao podemos alterar o valor de uma propriedade anao ser que usemos a palavra chave mutanting


struct changeStack {
    var myItens: [Int] = []
    
    mutating func addItens() {
        myItens.append(1)
    }
}

// Agora para criarmos algo que append sempre novos itens podemos fazer:

struct myVlues<Valores> {
    var myItens: [Valores] = []
    
    mutating func pushItens(item: Valores) {
        myItens.append(item)
    }
    
    mutating func popItens() -> Valores {
        return myItens.removeLast()
    }
}

var osMeusValores = myVlues<Int>()
osMeusValores.pushItens(item: 1)
osMeusValores.pushItens(item: 2)
osMeusValores.popItens()
print(osMeusValores.myItens)


// hashable é quando é possível representá-lo como único
// podemos adicionar constraints para as generics tambem pra poder limitar oq vem e oq nao vem

//func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
//    // function body goes here
//}


