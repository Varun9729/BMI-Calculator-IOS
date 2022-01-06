//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Varun Kashyap on 1/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain{
    var bmi: BMI?
   
    
    mutating func calculateBMI(height: Float, weight: Float) {
    let bmiValue = weight / pow(height, 2)
    if bmiValue < 18.5 {
    bmi = BMI(value: bmiValue, advice: "Eat Something!", color: UIColor(#colorLiteral(red: 0.68, green: 0.85, blue: 0.90, alpha: 1)))
    } else if bmiValue < 24.9 {
    bmi = BMI(value: bmiValue, advice: "Damn! You're fit.", color: UIColor(#colorLiteral(red: 0.13, green: 0.55, blue: 0.21, alpha: 1)))
    } else {
    bmi = BMI(value: bmiValue, advice: "Go to the Gym Asap!", color: UIColor(#colorLiteral(red: 1.00, green: 0.00, blue: 0.27, alpha: 1)))
    }
    }
    
    func getBMIValue() -> String{
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice to you sir!"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
        
    }
}
