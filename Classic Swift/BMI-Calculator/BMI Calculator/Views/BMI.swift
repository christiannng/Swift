//
//  BMI.swift
//  BMI Calculator
//
//  Created by Christian Nguyen on 2019-12-04.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(Value: Float, Advice: String, Color: UIColor) {
        self.value = Value
        self.advice = Advice
        self.color = Color
    }
    
//    func getBMIAdvice() -> String {
//        if value < 18.5 { return "Underweight" }
//        else if value >= 18.5 && value < 24.9 { return "Normal" }
//        else { return "Overweight" }
//    }
    
}
