//propriedades
//stored properties: sao variaveis ou constantes instanciadas em uma classe ou struct em particular

//lazy stored property: variavel (so pode ser var) cujo valor inicial só é calculado quando é usado pela primeira vez
//usamos lazy numa var quando o valor inicial é dependente de fator externo ou quando o seu valor é dado por processos comutacionais muito caros

//computed properties: propriedades que muda de acordo com algum valor computado, sao tipadas e devem ser var

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

var esporte = Sport(name: "Fut", isOlympicSport: true)
print(esporte.olympicStatus)
