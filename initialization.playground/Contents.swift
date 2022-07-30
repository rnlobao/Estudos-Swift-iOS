//inicializacao
//Voce deve passar sempre pra uma classe quando os valores estocados nao tem um valor padrao ou sao opcionais

class Carro {
    var rodas: Int
    var cor: String
    var quatroPortas: Bool
    
    init(rodas: Int, cor: String, quatroPortas: Bool) {
        self.rodas = rodas
        self.cor = cor
        self.quatroPortas = quatroPortas
    }
}

var meuCarro = Carro(rodas: 4, cor: "Azul", quatroPortas: true)

class Moto {
    var cor: String = "Verde"
    var xenon: Bool = false
    var cilindradas: Int = 200
}

var minhaMoto = Moto()


