//
//  MoviesTableViewCell.swift
//  filtro-tempo-real
//
//  Created by Robson Novato Lobao on 25/07/22.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    
    func setupName(_ name: String) {
        movieName.text = name
    }
}
