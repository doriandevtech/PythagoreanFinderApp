//
//  ResultViewController.swift
//  Pythagorean Finder
//
//  Created by Dorian Emenir on 07/07/2021.
//

import UIKit

class ResultViewController: UIViewController {
    var resultValue: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
