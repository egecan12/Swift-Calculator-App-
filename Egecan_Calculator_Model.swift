//
//  Egecan_Calculator_Model.swift
//  Egecan_Kahyaoglu_Blue_Calculator
//
//  Created by Egecan Kahyaoglu on 2019-09-11.
//  Copyright © 2019 Egecan Kahyaoglu. All rights reserved.
//

import Foundation

class Egecan_Calculator_Model {
    
    var firstNumber : Double?
    
    var  secondNumber : Double?
    
    var operation : String?
    
    func updateNumber(newNumber : Double) {
        if(firstNumber == nil){
            firstNumber = newNumber
        }
        else if(operation == nil){
            firstNumber = newNumber
        }
        else{
            secondNumber = newNumber
        }
    }

    func getResult() -> Double{
        var result:Double
        switch operation {
        case "+":
            result = firstNumber! + secondNumber!
        default:
            result = 0.0
        }
        return result
    }
    
    
}
