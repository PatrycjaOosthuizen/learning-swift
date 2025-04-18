//
//  WeatherManager.swift
//  13.WeatherApp-practice
//
//  Created by PatrycjaOosthuizen on 18/03/2025.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    // Base URL for OpenWeatherMap API
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&units=metric&appid=60baf84987d69c40a38596e7ebce0a21"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        // Construct the full API URL with the city name
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
        
    }
    
    // Perform networking to fetch live weather data from OpenWeatherMap
    func performRequest(with urlString: String) {
        
        //1. Create a URL
        if let url = URL(string: urlString) {
            
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in // trailing closure
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    //  Must use `self` in a closure inside a struct
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                       
                    }
                }
            }
            
            //4. Start the task
            task.resume()
        }
    }
    
    // Decode the JSON response into a Swift object for easy access to weather data
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            
            print("Decoded Weather Data: \(decodedData.weather[0].id)") // ✅ Debugging line
            // Print weather condition
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            return weather
            

        } catch {
           delegate?.didFailWithError(error: error)
            return nil
        }
        
    }

    
    
}
