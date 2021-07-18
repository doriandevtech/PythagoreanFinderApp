//
//  ResultViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 18/07/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var resultValue: String?

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = resultValue
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }


}
