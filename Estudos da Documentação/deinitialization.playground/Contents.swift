//nos so podemos desinicializar classes
//Alguns pontos, como usei a caracteristica static, e so tem esse atributo se tornou como uma classe unica, que nao tem como criar outra dai quando limpamos a memoria de uma variavel como "eu" o deinit é ativado, que basicamente significa: faça isso quando a classe for encerrada

class Locadora {
    static var quantidadeDeFilmes = 100
}

class Locador {
    var locou: Bool
    
    init (locou: Bool) {
        self.locou = locou
    }
    
    func pegouEmprestado() {
        Locadora.quantidadeDeFilmes -= 1
    }
    
    deinit {
        Locadora.quantidadeDeFilmes += 1
    }
}

var eu: Locador? = Locador(locou: true)

eu!.pegouEmprestado()
print(Locadora.quantidadeDeFilmes)

eu = nil
print(Locadora.quantidadeDeFilmes)





