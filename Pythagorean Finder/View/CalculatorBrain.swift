//
//  CalculatorBrain.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 01/07/2021.
//

import UIKit

struct CalculatorBrain {
    
    var thirdSideValue: Float = 0.0
    
    func getResultValue() -> String {
        let hypoValue = String(format: "%.1f", thirdSideValue)
        return hypoValue
    }
    
//    func getColor() -> UIColor {
//        return thirdSideValue?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//    }
    
    mutating func calculateSide(firstSide: Float, secondSide: Float) {
        thirdSideValue = sqrt(pow(firstSide, 2) + pow(secondSide, 2))

//        result = Result(value: thirdSideValue, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
}
