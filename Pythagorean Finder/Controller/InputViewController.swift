//
//  ViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 22/06/2021.
//

import UIKit

class InputViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var mainTitle: UILabel!
    
    @IBOutlet weak var firstSideTitle: UILabel!
    @IBOutlet weak var firstSideLabel: UILabel!
    @IBOutlet weak var secondSideTitle: UIStackView!
    @IBOutlet weak var secondSideLabel: UILabel!
    
    @IBOutlet weak var firstSideSlider: UISlider!
    @IBOutlet weak var secondSideSlider: UISlider!
    
    @IBOutlet weak var calculateTitle: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTitle.layer.cornerRadius = 15
        mainTitle.layer.masksToBounds = true
        
        firstSideTitle.layer.cornerRadius = 15
        firstSideTitle.layer.masksToBounds = true
        firstSideLabel.layer.cornerRadius = 15
        firstSideLabel.layer.masksToBounds = true
        
        secondSideTitle.layer.cornerRadius = 15
        secondSideTitle.layer.masksToBounds = true
        secondSideLabel.layer.cornerRadius = 15
        secondSideLabel.layer.masksToBounds = true
        
        calculateTitle.layer.cornerRadius = 15
        calculateTitle.layer.masksToBounds = true
    }
    
    @IBAction func firstSideChanged(_ sender: UISlider) {
        let firstVal = String(format: "%.0f", sender.value)
        firstSideLabel.text = "\(firstVal)cm"
    }
    
    @IBAction func secondSideChanged(_ sender: UISlider) {
        let secondVal = String(format: "%.0f", sender.value)
        secondSideLabel.text = "\(secondVal)cm"
    }

    @IBAction func buttonCalculate(_ sender: UIButton) {
        let firstValue = firstSideSlider.value
        let secondValue = secondSideSlider.value
        
        let resultTest = sqrt(pow(firstValue, 2) + pow(secondValue, 2))
        
        print(resultTest)
        
        
        calculatorBrain.calculateSide(firstSide: firstValue, secondSide: secondValue)
        performSegue(withIdentifier: "goToValue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToValue" {
            let destinationResult = segue.destination as! ResultViewController
            destinationResult.resultValue = calculatorBrain.getResultValue()
            destinationResult.resultColor = calculatorBrain.getColor()
        }
    }
    
}
