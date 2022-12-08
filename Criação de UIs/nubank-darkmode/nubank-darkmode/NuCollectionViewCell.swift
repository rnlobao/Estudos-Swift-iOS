//
//  NuCollectionViewCell.swift
//  nubank-darkmode
//
//  Created by Robson Novato Lobao on 19/01/22.
//

import UIKit

class NuCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewPurple: UIView! {
        didSet {
            viewPurple.layer.cornerRadius = 21
        }
    }
    @IBOutlet weak var functionLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    func setupCell(functionLabelInput: String, iconImageInput: UIImage) {
        functionLabel.text = functionLabelInput
        iconImage.image = iconImageInput
    }
    
}
