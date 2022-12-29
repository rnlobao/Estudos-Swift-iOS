// Protocolos

// Primeira regra, quando extendemos um protocolo junto com uma classe de uma outra classe, a classe deve vir primeiro que o protocolo

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")
// john.fullName is "John Appleseed"

print(john.fullName)


class NaveEspacial: FullyNamed {
    var nome: String
    var sobreNome: String
    
    init(nome: String, sobreNome: String) {
        self.nome = nome
        self.sobreNome = sobreNome
    }
    
    var fullName: String {
        return nome + " " + sobreNome
    }
}

let minhaNave = NaveEspacial(nome: "Millenium", sobreNome: "Falcon")

print(minhaNave.fullName)
// Nao consigo fazer isso pq ela só da get
// minhaNave.fullName = "Robson Novato"


//Nos podemos usar os protocolos para passar delegates, onde em uma outra classe nos fazemos oq precisa ser usado na primeira classe, ex:

protocol ChamarMensagem {
    var mensagem: String { set get }
}

class ChamadaDaMensagem {
    var delegate: ChamarMensagem?

    func printarMensagem() {
        print(delegate?.mensagem)
    }
}


class OndeCoordenaremosAsInfos: ChamarMensagem {
    var mensagem: String = "Qual tela"
}

let mensagemSetada = OndeCoordenaremosAsInfos()
let chamadaDaMensagem = ChamadaDaMensagem()
chamadaDaMensagem.delegate = mensagemSetada

chamadaDaMensagem.printarMensagem()







