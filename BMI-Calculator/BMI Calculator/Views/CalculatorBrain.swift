//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Christian Nguyen on 2019-12-04.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / height / height
        
        if bmiValue < 18.5 {
            bmi = BMI(Value: bmiValue, Advice: "Eat more pies", Color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) )
        }
        else if bmiValue >= 18.5 && bmiValue < 24.9 {
            bmi = BMI(Value: bmiValue, Advice: "Fit as a fiddle!", Color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) )
        }
        else {
            bmi = BMI(Value: bmiValue, Advice: "Eat less pies", Color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1) )
        }
    }
    
    func getBMIValue () -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Do not have enough info to calculate"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
    }
    
}
