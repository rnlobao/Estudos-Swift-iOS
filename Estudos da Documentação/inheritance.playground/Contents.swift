//herança
//a classe que é herdada é conhecida como superclass e a que herda é conhecida como subclass

//podemos dar override numa função, ou seja, sobrecescrever ela

class Vehicle {
    var speed: Double = 0.0
    final func stop() {}
    func run() {}
}

class Bike: Vehicle {
    override func run() {
        speed += 2.0
    }
//    override func stop() {
//        speed -= 1
//    }
}

var myBike = Bike()
myBike.speed = 3
myBike.run()
print(myBike.speed)

//se nao vai dar mais override ou herdar coloca final na variavel que ela se torna intocavel
