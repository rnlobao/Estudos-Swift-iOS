//structures and classes
//blocks of general purpose of code

/*
 Differences between classes and structs
 1) Classes have inheritance
 2) Classes have deinitializers : deinit()
 3) Classes dont have a default memberwise initializer
 4) Classes are reference types, structs are value types
 */

//Agora a gente vai criar uma classe e uma struct

struct Iphone {
    var modelo = 12
    var ano = 2022
}

class Ecossistema {
    //Inicializador automatico de struct
    var iphone = Iphone(modelo: 11, ano: 2012)
    var airpod = "Pro"
    var mac = "Pro 2022"
}

//Structs sao "value type" ou seja todas as instancias dele em código são cópias da original, se alterar uma, nao altera a outra, as classes sao "reference types" ou seja, todas as instancias dele em diferentes parte do código se referem a mesma classe, classes se comportam quase como ponteiros

//Nos temos o operador "identical to" representado por === que diz respeito a quando duas coisas sao referencia para o mesmo lugar, atente-se, não é igual a e sim fazem referencia para um mesmo membro de uma classe

class MacBook {
    var year: Int
    var color: String
    
    init(year: Int, color: String) {
        self.year = year
        self.color = color
    }
}

var meuMacbook = MacBook(year: 2020, color: "Cinza")
var macRoubado = meuMacbook

macRoubado.color = "Preto"
print(meuMacbook.color)


