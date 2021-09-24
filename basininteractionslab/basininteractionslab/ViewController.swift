//
//  ViewController.swift
//  basininteractionslab
//
//  Created by Reece Olsen on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func setTextButtonTapped(_ sender: Any) {
        if let text = testField.text {
            label.text = text
        }
    }
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = ""
        testField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

