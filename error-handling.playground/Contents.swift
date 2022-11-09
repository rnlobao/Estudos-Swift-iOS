import UIKit

// podemos ter varios tipos de erro que sao dados com throw e representados pelo tipo Error

enum pcErrors: Error {
    case memoriaInsuficiente
    case semBateria
    case ramPifou
}

throw pcErrors.memoriaInsuficiente

// Há 4 formas de lidar com um erro em swift:
/*
 1) Propagar o erro
 2) lidar usando um do - catch
 3) lidar sendo um valor optional
 4) nao ter erros rs
 */

//Uma funcao pode dar throw ou nao em um erro:
func canThrowError() throws -> String {
    throw pcErrors.memoriaInsuficiente
}
var memoriaAtual = 10
func tentarAlocarMemoria(valor: Int) -> Int {
    return memoriaAtual - valor
}

// nos usamos o try para tentar algo, se retornar erro no do, entra no catch

do {
    try canThrowError()
    print("Sucesso")
} catch pcErrors.memoriaInsuficiente {
    print("Memoria Insuficiente")
}
