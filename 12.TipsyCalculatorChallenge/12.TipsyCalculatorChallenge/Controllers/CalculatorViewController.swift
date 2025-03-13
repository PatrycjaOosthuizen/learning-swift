//
//  ViewController.swift
//  12.TipsyCalculatorChallenge
//
//  Created by PatrycjaOosthuizen on 12/03/2025.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    

    @IBAction func tipChanged(_ sender: UIButton) {
        // Deselect all buttons first
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        // Select the button that was pressed
        sender.isSelected = true
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

