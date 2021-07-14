//
//  ViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 22/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var firstSideLabel: UILabel!
    @IBOutlet weak var secondSideLabel: UILabel!
    @IBOutlet weak var firstSideSlider: UISlider!
    @IBOutlet weak var secondSideSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstSideChanged(_ sender: UISlider) {
        let firstVal = String(format: "%.1f", sender.value)
        firstSideLabel.text = "\(firstVal)cm"
    }
    
    @IBAction func secondSideChanged(_ sender: UISlider) {
        let secondVal = String(format: "%.1f", sender.value)
        secondSideLabel.text = "\(secondVal)cm"
    }

    @IBAction func buttonCalculate(_ sender: UIButton) {
        let firstValue = firstSideSlider.value
        let secondValue = secondSideSlider.value
        
        calculatorBrain.calculateSide(firstSide: firstValue, secondSide: secondValue)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier === "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultValue = calculatorBrain.getResultValue()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}
