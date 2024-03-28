//
//  BrowseViewController.swift
//  dfg
//
//  Created by Student on 19/03/24.
//

import UIKit
var browse: String? // Global variable to store the selected data

class BrowseViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var Browse: UIButton!
    @IBOutlet weak var myBookButton: UIButton!

    @IBOutlet weak var myBooksButton: UITextField!
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var txtfield: UITextField!
    let dropdownOptions = ["Recommendations", "Choice Awards", "Giveaways", "New Releases", "Lists", "Explore", "News & Interviews"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerview.dataSource = self
                pickerview.delegate = self
                txtfield.inputView = pickerview
        txtfield.backgroundColor = UIColor.clear
        txtfield.borderStyle = .none
        pickerview.isHidden=true
        Browse.isHidden = true

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           pickerview.isHidden = false
           return dropdownOptions.count

       }
       
       // MARK: - UIPickerViewDelegate Methods
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           pickerview.isHidden = false

           return dropdownOptions[row]
       }
       
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           pickerview.isHidden = false
           browse = dropdownOptions[row] // Store selected data in browse variable
                txtfield.text = browse // Update text field with selected data
                txtfield.resignFirstResponder() // Hide the picker view

       }
    

    @IBAction func butttons(_ sender: Any) {
        Browse.becomeFirstResponder()

    }
    

}
