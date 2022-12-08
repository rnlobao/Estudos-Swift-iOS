//
//  ViewController.swift
//  nubank-darkmode
//
//  Created by Robson Novato Lobao on 19/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionWithFunctions: UICollectionView!
    @IBOutlet weak var nameInCard: UILabel! {
        didSet {
            nameInCard.text = "Robson"
        }
    }
    @IBOutlet weak var moneyView: UIView! {
        didSet {
            moneyView.layer.cornerRadius = 21
        }
    }
    @IBOutlet weak var myMoneyView: UIView! {
        didSet {
            myMoneyView.layer.cornerRadius = 21
        }
    }
    @IBOutlet weak var moneyAvailable: UILabel! {
        didSet {
            moneyAvailable.text = "R$1.000.000"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionWithFunctions.delegate = self
        collectionWithFunctions.dataSource = self
        collectionWithFunctions.register(UINib(nibName: "NuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NuCollectionViewCell")
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NuCollectionViewCell", for: indexPath) as! NuCollectionViewCell
        if indexPath.row == 0 {
            cell.setupCell(functionLabelInput: "Fazer um\nPix", iconImageInput: UIImage(named: "pixSymbol")!)
        }
        if indexPath.row == 1 {
            cell.setupCell(functionLabelInput: "Pagar um \nboleto", iconImageInput: UIImage(named: "barCode")!)
        }
        if indexPath.row == 2 {
            cell.setupCell(functionLabelInput: "Fazer um \ndepósito", iconImageInput: UIImage(named: "moneyAndArrow")!)
        }
        if indexPath.row == 3 {
            cell.setupCell(functionLabelInput: "Fazer um \ndepósito", iconImageInput: UIImage(named: "moneyAndArrow")!)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 127)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
    }
}

