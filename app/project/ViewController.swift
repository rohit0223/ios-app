//
//  ViewController.swift
//  project
//
//  Created by Student on 12/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signin: UIButton!
    @IBOutlet weak var createacount: UIButton!
    @IBOutlet weak var fnm: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var eml: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fnm.layer.cornerRadius = 20
        fnm.layer.masksToBounds = true
        fnm.layer.borderWidth = 2.0
        eml.layer.cornerRadius = 20
        eml.layer.masksToBounds = true
        eml.layer.borderWidth = 2.0
        pass.layer.cornerRadius = 20
        pass.layer.masksToBounds = true
        pass.layer.borderWidth = 2.0
        createacount.layer.cornerRadius = 23.0 // Adjust the value as needed
        createacount.layer.masksToBounds = true
        createacount.layer.borderWidth = 2.0
        signin.layer.cornerRadius = 23.0 // Adjust the value as needed
        signin.layer.masksToBounds = true
        signin.layer.borderWidth = 2.0
        
        if let currentPlaceholder = eml.placeholder {
            let newPlaceholder = NSAttributedString(string: currentPlaceholder, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17.0)]) // Adjust the size as needed
            eml.attributedPlaceholder = newPlaceholder
        }
        if let currentPlaceholder = fnm.placeholder {
            let newPlaceholder = NSAttributedString(string: currentPlaceholder, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17.0)]) // Adjust the size as needed
            fnm.attributedPlaceholder = newPlaceholder
        }
        if let currentPlaceholder = pass.placeholder {
            let newPlaceholder = NSAttributedString(string: currentPlaceholder, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17.0)]) // Adjust the size as needed
            pass.attributedPlaceholder = newPlaceholder
        }
    }


}

