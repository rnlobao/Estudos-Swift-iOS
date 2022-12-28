// extensions podem ser usadas para criar inits, valores computados, adicionar métodos


class AlgumasFuncionalidades {
    init() {
        printarOI()
    }
    func printarOI() {
        print("Oi")
    }
}

extension AlgumasFuncionalidades {
    func printarTchau() {
        print("Tchau")
    }
}


// Normalmente extensions sao usadas para organizar codigo e separar algumas extensoes como de uma tableViewDataSource ou Delegate
