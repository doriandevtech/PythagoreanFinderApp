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
    
    mutating func calculateSide(firstSide: Double, secondSide: Double) {
        let insideVal = pow(firstSide, 2) + pow(secondSide, 2)
        let thirdSide = sqrt(insideVal)
        
        result = Result(value: thirdSide, color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
    }
}
