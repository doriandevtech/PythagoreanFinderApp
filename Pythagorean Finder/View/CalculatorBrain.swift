//
//  CalculatorBrain.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 01/07/2021.
//

import UIKit

struct CalculatorBrain {
    
    var result: Result?
    
    func getResultValue() -> String {
        let resultValue = String(format: "%.1f", result?.value ?? 0.0)
        return resultValue
    }
    
    func getColor() -> UIColor {
        return result?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateSide(firstSide: Float, secondSide: Float) {
        let insideVal = pow(firstSide, 2) + pow(secondSide, 2)
        
        let thirdSide = sqrt(insideVal)
        
        result = Result(value: thirdSide, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
}
