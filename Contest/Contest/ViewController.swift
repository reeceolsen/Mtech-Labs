//
//  ViewController.swift
//  Contest
//
//  Created by Reece Olsen on 11/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        if emailTextField.text == "" {
            UIView.animate(withDuration: 0.2, animations: {
                self.emailTextField.transform = CGAffineTransform(translationX: 20, y: 2)
            }) {(_) in
                self.emailTextField.transform = CGAffineTransform.identity
            }
            
        }
    }
}
