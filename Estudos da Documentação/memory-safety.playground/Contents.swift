// Memory safety

// Asssim como vimos o swift tem um gerenciamento de memoria muito bom, entretanto quando tentamos fazer uma operacao que modifica a memória como um write ao mesmo tempo que outra faz isso podemos ter alguns conflitos

// Possiveis conflitos:

// 1 - Acesso em parametros inout

var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}

///increment(&stepSize)
// Error: conflicting accesses to stepSize

// 2 - Usando mutating methods

func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}

struct Player {
    var name: String
    var health: Int
    var energy: Int

    static let maxHealth = 10
    mutating func restoreHealth() {
        health = Player.maxHealth
    }
}

extension Player {
    mutating func shareHealth(with teammate: inout Player) {
        balance(&teammate.health, &health)
    }
}

var oscar = Player(name: "Oscar", health: 10, energy: 10)
var maria = Player(name: "Maria", health: 5, energy: 10)
oscar.shareHealth(with: &maria)  // OK


////oscar.shareHealth(with: &oscar)
// Error: conflicting accesses to oscar


