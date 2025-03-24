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
                    self.parseJSON(weatherData: safeData) // inside the closure we must add "self" if we are calling the method from the current class
                }
            }
            
            //4. Start the task
            
            task.resume()
            
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            // Print weather condition
            print(decodedData.weather[0].description)
            
        } catch {
            print(error)
        }
    }
    
    
}
