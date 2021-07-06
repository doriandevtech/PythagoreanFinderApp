//
//  ViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 22/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var firstSideValue: UITextField!
    @IBOutlet weak var secondSideValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonCalculate(_ sender: UITextField) {
        let firstValue = firstSideValue.text
        let secondValue = secondSideValue.text

        let value1 = Double(firstValue ?? "")
        let value2 = Double(secondValue ?? "")
        
        calculatorBrain.calculateSide(firstSide: value1, secondSide: value2)
    }
    
}
