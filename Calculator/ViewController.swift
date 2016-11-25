//
//  ViewController.swift
//  Calculator
//
//  Created by Nhật Minh on 11/24/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        InputTextField.isUserInteractionEnabled = false
    }
    @IBOutlet weak var distanceBetweenInputTextFieldAndResultLabel: NSLayoutConstraint!
    
    @IBOutlet weak var distanceBetweenResultLabelAndMiddleView: NSLayoutConstraint!
    
    @IBOutlet weak var InputTextField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    var daucham = false
    
    var isTapping = false
    
    var isEndOperation = true
    
    var firstNumber : Double = 0
    
    var secondNumber : Double = 0
    
    var operation : String = ""
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        updateConstraints()
        
    }
    
    
    func updateConstraints() -> Void
    {
        
        let scale = UIScreen.main.bounds.size.height / 667
        
        distanceBetweenResultLabelAndMiddleView.constant = UIScreen.main.bounds.size.height > 480 ?
        
            distanceBetweenResultLabelAndMiddleView.constant * scale : distanceBetweenResultLabelAndMiddleView.constant * 0.1
        
        distanceBetweenInputTextFieldAndResultLabel.constant = UIScreen.main.bounds.size.height > 480 ?
        
            distanceBetweenInputTextFieldAndResultLabel.constant * scale : distanceBetweenInputTextFieldAndResultLabel.constant * 0.1
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    
    
    
    
    @IBAction func numberAction(_ sender: UIButton)
    {
        
        let number = sender.currentTitle
        
        if isTapping
        {
            InputTextField.text = InputTextField.text! + number!
            
        }
        else
        {
            InputTextField.text = number
            isTapping = true
        }
        
    }
    
    
    @IBAction func operatorAction(_ sender: UIButton)
    {
        
        operation = sender.currentTitle!
        
        if let inputoperation = Double(InputTextField.text!)
        {
            if isEndOperation
            {
                daucham = false
                firstNumber = firstNumber + inputoperation
            }
            else
            {
                firstNumber = Double(ResultLabel.text!)!
            }
        }
        else
        {
            print("ban can nhap so vao truoc khi thuc hien tinh toan")
        }
        isTapping = false
        
        
        
        if operation == "%"
        {
            equalAction(sender)
        }
        else if operation == "+/-"
        {
            equalAction(sender)
        }
    }
    
    
    
    @IBAction func equalAction(_ sender: UIButton)
    {
        
        isTapping = false
        
        var result : Double = 0
        
        if let realSecondNumber = Double(InputTextField.text!)
        {
            secondNumber = realSecondNumber
        }
        
        switch operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            result = firstNumber / secondNumber
        case "%":
            result = firstNumber / 100
        case "+/-":
            if firstNumber < 0
            {
                firstNumber = fabs(firstNumber)
                result = firstNumber
            }
            else
            {
                firstNumber = -1 * firstNumber
                result = firstNumber
            }
            InputTextField.text = "\(result)"
        default:
            print("Error Operation")
        }
        
        ResultLabel.text = "\(result)"
        
    }
    
    
    @IBAction func ACAction(_ sender: UIButton)
    {
        
        firstNumber = 0
        secondNumber = 0
        InputTextField.text = ""
        ResultLabel.text = "0"
        isEndOperation = true
        
        
    }
    
    
    @IBAction func themdaucham(_ sender: UIButton) {
        isTapping = true
        
        if daucham == false
        {
            InputTextField.text = InputTextField.text! + "."
            daucham = true
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

