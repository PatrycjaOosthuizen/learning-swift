//
//  CoinManager.swift
//  ByteCoinChallenge
//
//  Created by PatrycjaOosthuizen on 01/04/2025.
//

import Foundation

// By convention, Swift protocols are usually defined in the same file as the class or struct that will use them.
// In this case, the protocol is in the same file as CoinManager.
protocol CoinManagerDelegate {

    // Define the methods that any class adopting this protocol must implement.
    // These methods don't have any functionality here—they will be implemented by the delegate.
    
    // When the price is updated, this method will be called with the latest price and currency.
    func didUpdatePrice(price: String, currency: String)
    
    // This method is called if an error occurs, passing the error details.
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    // An optional delegate that will be notified when the price is updated.
    // The delegate must implement the required methods from CoinManagerDelegate.
    var delegate: CoinManagerDelegate?

    
    //https://www.coinapi.io/
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "dbb45c7e-9db9-4282-a701-d31d167926c1" //"YOUR_API_KEY_HERE"
    
    let currencyArray = ["AUD","BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        //Use String concatenation to add the selected currency at the end of the baseURL along with the API key.
                let urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
                
                //Use optional binding to unwrap the URL that's created from the urlString
                if let url = URL(string: urlString) {
                    
                    //Create a new URLSession object with default configuration.
                    let session = URLSession(configuration: .default)
                    
                    //Create a new data task for the URLSession
                    let task = session.dataTask(with: url) { (data, response, error) in
                        if error != nil {
                            print(error!)
                            return
                        }
                        
                        if let safeData = data {
                            
                            if let bitcoinPrice = self.parseJSON(safeData) {
                                //Round the price down to 2 decimal places.
                                let priceString = String(format: "%.2f", bitcoinPrice)
                                                        
                                //Call the delegate method in the delegate (ViewController) and
                                //pass along the necessary data.
                                self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                            }
                        }
                        
                    }
                    //Start task to fetch data from bitcoin average's servers.
                    task.resume()
                }
            }
    func parseJSON(_ data: Data) -> Double? {
            
            //Create a JSONDecoder
            let decoder = JSONDecoder()
            do {
                
                //try to decode the data using the CoinData structure
                let decodedData = try decoder.decode(CoinData.self, from: data)
                
                //Get the last property from the decoded data.
                let lastPrice = decodedData.rate
                print(lastPrice)
                return lastPrice
                
            } catch {
                
                //Catch and print any errors.
                delegate?.didFailWithError(error: error)
                return nil
            }
        }
    
    }

