//
//  CalculatorBrain.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 01/07/2021.
//

import UIKit

struct CalculatorBrain {
    
    var thirdSideValue: ThirdSide?
    
    func getResultValue() -> String {
        let hypoValue = String(format: "%.0f", thirdSideValue?.value ?? 0.0)
        return hypoValue
    }
    
    func getColor() -> UIColor {
        return thirdSideValue?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateSide(firstSide: Float, secondSide: Float) {
        let thirdSide = sqrt(pow(firstSide, 2) + pow(secondSide, 2))
        
        if (firstSide == 0 || secondSide == 0) {
            thirdSideValue = ThirdSide(value: 0, color: .systemRed)
        } else {
            thirdSideValue = ThirdSide(value: thirdSide, color: .systemGreen)
        }
    }
}
