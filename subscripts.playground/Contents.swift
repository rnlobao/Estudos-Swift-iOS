//sobre subscripts
//atalhos para acessar os elementos membro de uma lista

struct Multiplicador {
    var num: Int
    subscript(index: Int) -> Int {
        return num * index
    }
}

var meuMultiplicador = Multiplicador(num: 3)
print(meuMultiplicador[2])

//Nao achei muito util pessoalmente 
