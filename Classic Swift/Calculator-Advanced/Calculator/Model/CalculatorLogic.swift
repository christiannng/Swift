//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Christian Nguyen on 2020-01-08.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

struct Calculator {
    
    private var number: Double?
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100.0
            case "=":
                return perfomTwoNumCalculation(n2: n)
            default:
                //fatalError("The operation passed in does not match any of the cases.")
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        
        
        return nil
    }
    
    private func perfomTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1,
            let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
            
        }
        
        return nil
        
    }


}
