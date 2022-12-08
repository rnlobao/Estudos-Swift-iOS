//
//  ViewController.swift
//  filtro-tempo-real
//
//  Created by Robson Novato Lobao on 25/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    var movies: [String] = []
    var searchMovies = [String]()
    var service = NetworkService()
    var movieServiceList: MoviesResult?
    
    @IBAction func searchButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        getDataMovies()
        //setupMovies()
        setupMoviesService()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MoviesTableViewCell", bundle: nil), forCellReuseIdentifier: "movies")
    }

    func setupMovies() {
        movies = ["SpiderMan", "AntMan", "IronMan", "Titanic", "Avatar", "Turma da Monica", "Lucifer",
                  "Parasita", "Vingadores EndGame", "Guardioes da Galaxia", "Clube da luta", "Django",
                  "Thor", "Tiro ao alvo", "Tubaroes assassinos", "Marley e eu", "Agente oculto", "tudo em dobro",
                  "Aguas Profundas", "Agente em dobro", "Cidade Perdida", "Centauro", "Jumanji 2"]
    }
    
    func setupMoviesService() {
        let listOfMovies = movieServiceList?.Search
        for mov in listOfMovies ?? [] {
            movies.append(mov.Title)
        }
    }
    
    @IBAction func editingChangeMovies(_ sender: Any) {
        searchMovies.removeAll()
        for string in movies {
            if string.lowercased().starts(with: textField.text?.lowercased() ?? "") {
                searchMovies.append(string)
            }
        }
        if !(textField.text?.isEmpty ?? false) && searchMovies.isEmpty {
            searchMovies.append("")
        }
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchMovies.count == 1 && searchMovies[0] == "" {
            return 0
        }
        else if !searchMovies.isEmpty {
            return searchMovies.count
        }
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movies", for: indexPath) as! MoviesTableViewCell
        if !searchMovies.isEmpty {
            cell.setupName(searchMovies[indexPath.row])
        } else {
            cell.setupName(movies[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}



extension ViewController {
    func getDataMovies() {
        service.getMovies(sucess: { result in
            self.movieServiceList = result
            self.setupMoviesService()
            self.tableView.reloadData()
        }, error: { error in
        })
    }
}
