// Opaque Types

// basicamente utilizamos o some de retorno pra poder fazer o retorno de qualquer tipo de dado

protocol Fighter { }
struct XWing: Fighter { }

func launchFighter() -> Fighter {
    XWing()
}

let red5 = launchFighter()

func launchOpaqueFighter() -> some Fighter {
    XWing()
}

let red6 = launchOpaqueFighter()
