
Criaçao de um MVP de um aplicativo de consolidacao de investimentos em que o usuario pode cadastrar ativos de diversos setores, analisar sua rentabilidade e acompanhar cotacoes em tempo real.

Esse trabalho se deu pela materia de **Engenharia de Software II** e contou com a ajuda do Pedro Lucas, Augusto Guillarducci e Gabriel Catizani para o back-end que pode ser encontrado em: https://github.com/augustofgui/carteirada-back-end

Veja como ficou os desenvolvimentos das sprints:

<details>
  <summary>Sprint 1</summary>
  Inicialmente propomos um mvp e comecamos a modular as sprints de desenvolvimento de acordo com as metodologias ageis mostradas nessa apresentacao:
  
  <p float="left">
    <img width="300" alt="image" src="https://user-images.githubusercontent.com/66230142/191112311-b2e54590-ca4e-48cb-9abc-a4f0083004b6.png">  
  </p>
</details>

<details>
  <summary>Sprint 2</summary>
  O proposto para a sprint 2 no meu caso seria apresentar uma UI/UX para nosso aplicativo de forma que fosse simples e intuitivo para o usuario utilizar seus recursos. O produto final, tendo em vista que meus conhecimentos de design sao limitados kkkkk foi esse:
  
  
  <p align="center">
    <img width="842" alt="image" src="https://user-images.githubusercontent.com/66230142/191114042-9042a409-de0b-4fea-9e8b-5eec761d1c2a.png">
  </p>
</details>

<details>
  <summary>Sprint 3</summary>
  Aqui comecou a implementacao de fato, onde pudemos contar com o cadastro de usuários, uma tela de login e um cadastro de ativos no nosso app:
  
  <p float="left">
     <img width="300" alt="image" src="https://user-images.githubusercontent.com/66230142/193101220-3e1f191e-5e57-4f5d-a45b-8109b9ae05d6.gif"> 
  </p>
  
  Alem disso pude treinar a utilizacao de tabBarController e conexão com backend atraves do alamofire com componentizacao de alguns itens visuais. Pela primeira vez, com o intuito de aprender novos itens, utilizei um PickerView, ademais fiz a gerência do teclado com os campos utilizando o IQKeyboard do swift em que permite scrollar a tela para ver os campos, troca-los e encerra-los com botoes fornecidos na toolBar do teclado
  
  Para trazer para um âmbito ágil, utilizamos um board kanban com divisao de tarefas:
  
  <p float="left">
     <img width="500" alt="image" src="https://user-images.githubusercontent.com/66230142/193102648-61999f72-58b5-4da8-9377-1df56f60ad1a.png"> 
  </p>
</details>

<details>
  <summary>Sprint 4</summary>
  Comecei fazendo a componentizacao dos itens de botao e textField para facilitar a manutencao de código, alem de reduzir algumas redundancias de métodos:
 
  <p float="left">
    <img width="300" alt="image" src="https://user-images.githubusercontent.com/66230142/193374258-acc959e1-870b-4152-a03d-9f7a404e77b2.png">
    <img width="400" alt="image" src="https://user-images.githubusercontent.com/66230142/193374333-b0b71e80-43b0-473e-9866-991ea35aea23.png">
  </p>
  
  Alem disso fiz a utilizacao da autenticacao do firebase e seu realtime database
  Outras coisas que fiz nessa sprint:
  - Reutilizacao dos charts
  - Utilizacao de graficos com o pod Charts no cocoapods
  - Session manager com Firebase
</details>

Resultado final:
<p float="left">
  </p>




