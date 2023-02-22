//
//  ViewController.swift
//  viewCode
//
//  Created by Robson Novato Lobao on 22/02/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var myLabel: UILabel = {
       let label = UILabel()
        label.text = "Ola"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        buildLayout()
        buildConstraints()
        view.backgroundColor = .white
    }
    
    // MARK: - Private methods
    
    private func buildLayout() {
        view.addSubview(myLabel)
    }
    
    private func buildConstraints() {
        myLabel.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }


}

