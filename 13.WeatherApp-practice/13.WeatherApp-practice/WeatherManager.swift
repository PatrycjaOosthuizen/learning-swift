//
//  WeatherManager.swift
//  13.WeatherApp-practice
//
//  Created by PatrycjaOosthuizen on 18/03/2025.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&units=metric&appid=60baf84987d69c40a38596e7ebce0a21"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString:urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL
        
        if let url = URL(string: urlString) {
            //2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            
            let task = session.dataTask(with: url) { (data, response, error) in // trailing closure
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            
            //4. Start the task
            
            task.resume()
            
        }
    }
    
    
}
