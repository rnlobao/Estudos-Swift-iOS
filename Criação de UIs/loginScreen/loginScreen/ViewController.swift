//
//  ViewController.swift
//  loginScreen
//
//  Created by rncodes on 29/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var firstTextField: UITextField! {
        didSet {
            firstTextField.layer.cornerRadius = 15
        }
    }
    
    @IBOutlet weak var loginButton: UIButton! {
        didSet {
            loginButton.layer.cornerRadius = 24
        }
    }
    
    @IBOutlet weak var secondTextField: UITextField! {
        didSet {
            secondTextField.layer.cornerRadius = 15
        }
    }
}

extension UITextField{
   @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

