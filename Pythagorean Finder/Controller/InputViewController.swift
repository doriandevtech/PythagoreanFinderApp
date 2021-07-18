//
//  ViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 22/06/2021.
//

import UIKit

class InputViewController: UIViewController {
    
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
        
        let secondVC = ResultViewController()
        secondVC.result = String(format: "%.0f", resultTest)
        
        self.present(secondVC, animated: true, completion: nil)
        
//        calculatorBrain.calculateSide(firstSide: firstValue, secondSide: secondValue)
//        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier === "goToResult" {
//            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.resultValue = calculatorBrain.getResultValue()
//            destinationVC.color = calculatorBrain.getColor()
//        }
//    }
    
}
