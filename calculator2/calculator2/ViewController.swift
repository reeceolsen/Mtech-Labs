//
//  ViewController.swift
//  calculator2
//
//  Created by Reece Olsen on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
var firstNumber = ""
var secondNumber = ""
var firstOrSecond = false
var operation = 0
    
    @IBOutlet weak var printResult: UILabel!
    
    @IBAction func clearButton(_ sender: Any) {
        self.printResult.text = "0"
        firstNumber = ""
        secondNumber = ""
        operation = 0
    }
    
    @IBAction func negativeButton(_ sender: Any) {
        if firstOrSecond == true {
            if firstNumber.first == "-" {
                firstNumber.removeFirst()
            } else {
                firstNumber.insert("-", at: firstNumber.startIndex)
            }
        } else {
            if secondNumber.first == "-" {
                secondNumber.removeFirst()
            } else {
                secondNumber.insert("-", at: secondNumber.startIndex)
            }
        }
        self.printResult.text = firstOrSecond ? firstNumber : secondNumber
    }
    @IBAction func divideButton(_ sender: Any) {
        operation = 1
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        operation = 2
    }
    @IBAction func additionButton(_ sender: Any) {
        operation = 3
    }
    @IBAction func minusButton(_ sender: Any) {
        operation = 4
    }
    @IBAction func equalButton(_ sender: Any) {
        switch operation {
        case 1:
            self.printResult.text = String(Double(firstNumber)! / Double(secondNumber)!)
        case 2:
            self.printResult.text = String(Double(firstNumber)! * Double(secondNumber)!)
        case 3:
            self.printResult.text = String(Double(firstNumber)! + Double(secondNumber)!)
        case 4:
            self.printResult.text = String(Double(firstNumber)! - Double(secondNumber)!)
        default:
            self.printResult.text = String("wrong")
        }
    }
    
  
    
    @IBAction func numberButton(_ sender: UIButton) {
        if operation == 0 {
            firstOrSecond = true
        } else {
            firstOrSecond = false
        }
        if firstOrSecond{
            firstNumber += sender.titleLabel!.text!
            
        } else {
            secondNumber += sender.titleLabel!.text!
        }
        self.printResult.text = firstOrSecond ? firstNumber : secondNumber
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
}

