//
//  ResultViewController.swift
//  12.TipsyCalculatorChallenge
//
//  Created by PatrycjaOosthuizen on 13/03/2025.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    var resultValue: String?  // Store received amount
    var tipPercentage: Float = 0.0
    var splitNumber: Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //  Display calculated amount per person
        totalLabel.text = resultValue
        
        // Display settings (split & tip percentage)
        settingsLabel.text = "Split between \(splitNumber) people, with \(Int(tipPercentage * 100))% tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go back to previous screen
        dismiss(animated: true, completion: nil)
    }
    
}
