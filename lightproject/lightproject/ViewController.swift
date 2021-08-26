//
//  ViewController.swift
//  lightproject
//
//  Created by Reece Olsen on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
var light = true
    fileprivate func updateUI() {
        view.backgroundColor = light ? .white : .black
    }
    
    
    @IBAction func button1(_ sender: Any) {
        light.toggle()
        updateUI()
    }
    
}

