import UIKit

//podemos usar funcoes assincronas para esperar o resultado de uma operacao dentro de uma funcao e nao cair em estado de erro por exemplo

func demorada() -> String {
    return "algo"
}

func esperarAlgo() async -> String {
    let result: String = await demorada()
    return result
}

//USamos o await para saber qual funcao deve ser esperada por um resultado

//para rodar algo em paralelo é só colocar o async na frente de um let


func parallelFunc() async {
    async let primeiro = demorada()
    async let segundo = demorada()
    async let terceiro = demorada()
    
    _ = await [primeiro, segundo, terceiro]
}



