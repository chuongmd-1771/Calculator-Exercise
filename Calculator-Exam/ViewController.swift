//
//  ViewController.swift
//  Calculator-Exam
//
//  Created by mai.dinh.chuong on 3/18/19.
//  Copyright © 2019 Sun-Asterisk Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var operation = true
    var textNum : String = ""
    var number1 : Double?
    var operationSysbol = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func acAction(_ sender: UIButton) {
        resultLabel.text = "0"
        operation = true
    }
    
    @IBAction func some(_ sender: UIButton) {
        textNum = String(resultLabel.text!)
        textNum = "-" + textNum
        resultLabel.text = textNum
        operation = true
    }
    @IBAction func multi(_ sender: UIButton) {
        operationSysbol = "*"
        number1 = Double(resultLabel.text!)
        operation = true
    }
    @IBAction func devide(_ sender: UIButton) {
        operationSysbol = "÷"
        number1 = Double(resultLabel.text!)
        operation = true
    }
    @IBAction func plus(_ sender: UIButton) {
        operationSysbol = "+"
        number1 = Double(resultLabel.text!)
        operation = true
    }
    @IBAction func minus(_ sender: UIButton) {
        operationSysbol = "-"
        number1 = Double(resultLabel.text!)
        operation = true
    }
    @IBAction func percentage(_ sender: UIButton) {
        number1 = Double(resultLabel.text!)
        number1 = number1!/100.0
        resultLabel.text = String(number1!)
        operation = true
    }
    
    @IBAction func dot(_ sender: UIButton) {
        addNumber(numbers: ".")
    }
    
    
    func addNumber(numbers : String)
    {
        textNum = String(resultLabel.text!)
        
        if operation
        {
            textNum = ""
            operation = false
        }
        
        textNum = textNum + numbers
        resultLabel.text = textNum
        
    }
    @IBAction func numbers(_ sender: UIButton) {
        if sender.tag == 0
        {
            addNumber(numbers: "0")
        } else if sender.tag == 1
        {
            addNumber(numbers: "1")
        } else if sender.tag == 2
        {
            addNumber(numbers: "2")
        } else if sender.tag == 3
        {
            addNumber(numbers: "3")
        } else if sender.tag == 4
        {
            addNumber(numbers: "4")
        } else if sender.tag == 5
        {
            addNumber(numbers: "5")
        } else if sender.tag == 6
        {
            addNumber(numbers: "6")
        } else if sender.tag == 7
        {
            addNumber(numbers: "7")
        } else if sender.tag == 8
        {
            addNumber(numbers: "8")
        } else if sender.tag == 9
        {
            addNumber(numbers: "9")
        }
    }
    
    
    
    @IBAction func equal(_ sender: UIButton) {
        let number2 = Double(resultLabel.text!)
        var result : Double?
        
        switch operationSysbol {
        case "+":
            result = number1! + number2!
        case "-":
            result = number1! - number2!
        case "*":
            result = number1! * number2!
        case "÷":
            result = number1! / number2!
        default:
            result = 0.0
        }
        
        resultLabel.text = String(result!)
        operation = true
    }
    
}

