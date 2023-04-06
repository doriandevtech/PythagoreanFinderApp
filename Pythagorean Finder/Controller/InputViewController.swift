//
//  ViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 22/06/2021.
//

import UIKit

class InputViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    
    // MARK: IBOutlets
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var firstSideTitle: UILabel!
    @IBOutlet weak var firstSideLabel: UILabel!
    @IBOutlet weak var secondSideTitle: UILabel!
    @IBOutlet weak var secondSideLabel: UILabel!
    @IBOutlet weak var firstSideSlider: UISlider!
    @IBOutlet weak var secondSideSlider: UISlider!
    @IBOutlet weak var calculateTitle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup(mainTitle)
        setup(firstSideTitle)
        setup(firstSideLabel)
        setup(secondSideTitle)
        setup(secondSideLabel)
        setup(firstSideSlider)
        setup(secondSideSlider)
        setup(calculateTitle)
    }

    
    // MARK: setup UIView objects
    
    /// setup(_ object: UIView) : sets up the layer's cornerRadius and masksToBounds properties of any UIView object
    /// - Parameter object: UIView object (e.g. UILabel, UISlider, UIButton)
    func setup(_ object: UIView) {
        object.layer.cornerRadius = 15
        object.layer.masksToBounds = true
    }
    
    
    // MARK: IBActions
    
    @IBAction func firstSideChanged(_ sender: UISlider) {
        let firstVal = String(format: "%.0f", sender.value)
        firstSideLabel.text = "\(firstVal) cm"
    }
    
    @IBAction func secondSideChanged(_ sender: UISlider) {
        let secondVal = String(format: "%.0f", sender.value)
        secondSideLabel.text = "\(secondVal) cm"
    }

    @IBAction func buttonCalculate(_ sender: UIButton) {
        let firstValue: Float = firstSideSlider.value
        let secondValue: Float = secondSideSlider.value
                
        calculatorBrain.calculateSide(firstSide: firstValue, secondSide: secondValue)
        performSegue(withIdentifier: "goToValue", sender: self)
    }

    
    // MARK: Segue

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToValue" {
            let destinationResult = segue.destination as! ResultViewController
            destinationResult.resultValue = calculatorBrain.getResultValue()
            destinationResult.resultColor = calculatorBrain.getColor()
        }
    }
    
}
