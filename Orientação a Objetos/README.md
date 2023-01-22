Apos fazer o estudo da documentacao em prol de aprofundar nos conceitos inicias e fortalecer a base de desenvolvimento resolvi estudar a orientacao a objetos no Swift.

<h2>Métodos e propriedades</h2>

Assim como toda linguagem orientada a objetos temos as propriedades que sao as variaveis presentes no codigo e os metodos que sao funcoes dentro de uma classe e dependendo de como sao criados podem ser utilizados fora da classe tambem

<h2>Herança</h2>
A heranca nada mais é que receber algumas caracteristicas da classe que vc herda.

Por exemplo:

```
class Piano: Instrument {
  let hasPedals: Bool
  static let whiteKeys = 52
  static let blackKeys = 36
  
  init(brand: String, hasPedals: Bool = false) {
    self.hasPedals = hasPedals
    super.init(brand: brand)
  }
  
  override func tune() -> String {
    return "Piano standard tuning for \(brand)."
  }
  
  override func play(_ music: Music) -> String {
    let preparedNotes = super.play(music)
    return "Piano playing \(preparedNotes)"
  }
}
```
Nesse bloco de codigo nos basicamente temos o Piano como uma subclasse do Instrumento e o Piano pode acessar tudo do instrumento

Se voce notar, no init tem um **super.init** ele chama o init da classe pai que no caso é o Instrument e usa o brand dele pra colocar na classe filho.

Além de dar um overrida na funcao pai para atender as necessidades da subclasse





