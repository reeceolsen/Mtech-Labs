//
//  ViewController.swift
//  LoginSegues
//
//  Created by Reece Olsen on 9/24/21.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var ForgotUsernameButton: UIButton!
    @IBOutlet weak var ForgotPasswordButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func LoginAction(_ sender: Any) {
    }
    
    @IBAction func ForgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "LogingIn", sender: self)
    }
    @IBAction func ForgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "LogingIn", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = UsernameTextField.text
        if segue.identifier == "LogingIn" {
            segue.destination.navigationItem.title = "forgotUsername/Password"
        }
    }
    
}

