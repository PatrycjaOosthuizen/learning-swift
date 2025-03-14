//
//  ViewController.swift
//  12.TipsyCalculatorChallenge
//
//  Created by PatrycjaOosthuizen on 12/03/2025.
//

import UIKit

var tipPercentage: Float = 0.0
var splitNumber: Int = 2  // Default to 2 people
var finalAmount: String = "0.00"  // Store the final calculated amount

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
        
        // Extract tip percentage from button title
        let buttonTitle = sender.currentTitle ?? "0%"
        let tipValue = Double(buttonTitle.dropLast()) ?? 0.0
        tipPercentage = Float(tipValue) / 100.0
        
        //  Dismiss the keyboard when a tip button is pressed
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)  // Store the new split value
        splitNumberLabel.text = String(splitNumber)  // Update label
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let billText = billTextField.text, !billText.isEmpty, let billAmount = Double(billText) {
            let totalBillWithTip = billAmount * (1 + Double(tipPercentage))
            let amountPerPerson = totalBillWithTip / Double(splitNumber)
            
            // Format the final amount
            finalAmount = String(format: "%.2f", amountPerPerson)

            // Perform segue
            performSegue(withIdentifier: "goToResult", sender: self)
        } else {
            // Show an alert if the user tries to calculate without entering an amount
            let alert = UIAlertController(title: "Error", message: "Please enter a bill amount.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }

    }
    // The prepare(for segue:) function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultValue = finalAmount
            destinationVC.tipPercentage = tipPercentage
            destinationVC.splitNumber = splitNumber
        }
    }
}

