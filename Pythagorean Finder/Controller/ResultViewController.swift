//
//  ResultViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 18/07/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var resultValue: String?
    var resultColor: UIColor?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var recalculateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "\(resultValue ?? "0") cm"
        resultLabel.layer.cornerRadius = 15
        view.backgroundColor = resultColor
        
        recalculateBtn.layer.cornerRadius = 15
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
