//
//  ViewController.swift
//  ByteCoinChallenge
//
//  Created by PatrycjaOosthuizen on 31/03/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Important: Set this class as the coinManager's delegate to receive notifications when delegate methods are called.
        coinManager.delegate = self
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
    }
    
}

//MARK: - CoinManagerDelegate

extension ViewController: CoinManagerDelegate {
    
    // Implement the delegate methods for handling price updates and errors.

    func didUpdatePrice(price: String, currency: String) {
        
        // Ensure UI updates happen on the main thread to prevent crashes,
        // since URLSession runs on a background thread.
        DispatchQueue.main.async {
            self.bitcoinLabel.text = price
            self.currencyLabel.text = currency
        }
    }

    func didFailWithError(error: Error) {
        // Handle and log any errors encountered.
        print(error)
    }
}

//MARK: - UIPickerView DataSource & Delegate

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCurrency = coinManager.currencyArray[row]
        coinManager.getCoinPrice(for: selectedCurrency)
        
    }
}




