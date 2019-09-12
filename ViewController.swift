//
//  ViewController.swift
//  Egecan_Kahyaoglu_Blue_Calculator
//
//  Created by Egecan Kahyaoglu on 2019-09-11.
//  Copyright © 2019 Egecan Kahyaoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //mark:- outlets
    //variables

    @IBOutlet weak var numberDisplay: UITextField!
    
    var startNewNumber = true
    let calculatorModel = Egecan_Calculator_Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK:- IBACTIONS
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print(sender.currentTitle!)
        print("button pressed")
        
        let buttonText = sender.currentTitle!
        var currentValue = numberDisplay.text!
        
        
        
        switch (buttonText) {
        case "0","1","2","3","4","5","6","7","8","9":
            
            if(startNewNumber){
                currentValue = buttonText
            }
            else{
                
                currentValue = currentValue + buttonText
            }
            
            startNewNumber = false

            calculatorModel.updateNumber(newNumber: Double(currentValue)!)
            
        case "+":
            print("plus has been pressed")
            calculatorModel.operation = buttonText
            startNewNumber = true
        case "=":
            //get the result from the model
            
            if(calculatorModel.secondNumber == nil){
                calculatorModel.updateNumber(newNumber: Double(currentValue)!)

                
            }
            currentValue = String (calculatorModel.getResult())
            
        default:
            print(buttonText)
        }
        
        numberDisplay.text = currentValue
    }
}

