
Nesse estudo da documentaçao eu passei item por item do site: https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html com a documentação oficial do swift para desenvolvedores. Onde consegui abstrair varios conhecimentos alguns práticos, outros nao. Os que considero importantes, usados no mercado e que ultrapassam a barreira do básico do desenvolvimento serão dispostos nessa pequena thread:

<details>
  <summary>Strings</summary>
  Com relacao a strings a primeira operacao que podemos fazer é concatenar duas string fazendo:

  1- A soma delas:
  ```
    let string12 = "hello"
    let string21 = " there"
    var welcome = string12 + string21
  ```
  2- Com um append:
  
  ```
  welcome.append(string12)
  welcome.append(string21)
  ```
  Sobre posicao dos caracteres dentro de uma string, cada um conta com um indice que pode ser acessado de agumas formas:

  1- <kbd>suaString.startIndex</kbd> vai retornar um valor e ele vc pode usar pra acessar um valor de uma string, ex:

  ```
  let minhaFrase = "Ola a todos"
  let primeiroChar = minhaFrase.startIndex
  print(minhaFrase[primeiroChar])
  // Prints O
  ```
  
  2- <kdb>suaString.endIndex</kdb> vai pegar o ultimo valor que e acima do tamanho do vetor entao devemos usar o before:
  ```
  let minhaFrase = "Ola a todos"
  let indexDaUltima = minhaFrase.index(before: minhaFrase.endIndex)
  print(minhaFrase[indexDaUltima])
  // Prints s
  ```
  3- Alem do before usado, podemos ter tambem o after que pega o char imediatamente depois:
  ```
  let minhaFrase = "Ola a todos"
  let segundoIndex = minhaFrase.index(after: minhaFrase.startIndex)
  print(minhaFrase[segundoIndex])
  // Prints l
  ```
  4- Podemos tambem pegar o valor certo de posicao usando o offsetBy, lembrando que a string comeca no valor 0:
  ```
  let minhaFrase = "Ola a todos"
  let indexExato = minhaFrase.index(minhaFrase.startIndex, offsetBy: 6)
  print(minhaFrase[indexExato])
  // Prints: t
  ```
  
  Alem disso para inserir e remover strings / chars dos vetores temos para remocao, usamos sem parametro quando é so um char:
  
  ```
  var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome  = "hello!"

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome = "hello there!"
  ```
  ```
  welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome = "hello there"
  ```
</details>

<details>
  <summary>Diferença de structures e classes</summary>
  Ambas sao parecidas, podendo armazenar valores, definir metodos, possuir inicializadores para poderem ter valores iniciais e conformar com protocolos.

Entretando há algumas diferencas principais:
  * Classes podem herdar de outras classes
  * Classes possuem deinit()
  * Reference counting permite mais de uma referencia a uma classe de uma vez 
  * Principal diferença: struct sao value type e class sao reference type, ou seja quando alocamos uma classe ela está sendo salva em um endereco de memoria, entao se em algum lugar do codigo for alterado uma class em outro lugar tambem vai ser alterado, como um ponteiro em C
  <p align="center">
  <img width="626" alt="image" src="https://user-images.githubusercontent.com/66230142/212188970-9c754fb2-1090-413d-9773-8a6c823ba7f2.png">
  </p>
</details>

<details>
  <summary>Como evitar memory leak no codigo</summary>
  Para fazer isso devemos evitar um strong reference cycle, onde uma classe declara outra, vc da nil pras duas e nenhuma das duas é removida da memoria da aplicacao, é possivel resolver usando weak e unowned references, encontradas com mais detalhes no pdf: https://github.com/rnlobao/Estudos-Swift-iOS/blob/main/Estudos%20da%20Documentação/automatic-reference-counting.pdf
</details>
