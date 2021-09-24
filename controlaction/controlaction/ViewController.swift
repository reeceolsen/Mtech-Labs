//
//  ViewController.swift
//  controlaction
//
//  Created by Reece Olsen on 9/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickedbutton(_ sender: Any) {
        print("I clicked the button")
    }
    
    @IBAction func switchvaluechanged(_ sender: UISwitch) {
        if sender.isOn {
            print("On")
        } else {
            print("Off")
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        let 
        print(text)
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

