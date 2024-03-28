//
//  ViewController.swift
//  dfg
//
//  Created by Student on 14/03/24.
//

import UIKit

class ViewController: UIViewController  {
    @IBOutlet weak var myBookButton: UIButton!

    @IBOutlet weak var myBookkButton: UITextField!
    @IBOutlet weak var myBooksButton: UIButton!

    @IBOutlet weak var pickview: UIPickerView!
    
    @IBOutlet weak var wanttoreadbutton: UIButton!
    
    @IBAction func wanttoreade(_ sender: Any) {
        wanttoreadbutton.setTitle("Add to Read", for: .normal)

    }
    func numberOfComponents(in pickerview: UIPickerView) -> Int {
        return 1 ;
    }
    
  
    @IBAction func mybookbutton(_ sender: Any) {
        myBooksButton.becomeFirstResponder()

    }
    @IBAction func mybooksbutton(_ sender: Any) {
        myBooksButton.becomeFirstResponder()

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

     
    }
    


}

