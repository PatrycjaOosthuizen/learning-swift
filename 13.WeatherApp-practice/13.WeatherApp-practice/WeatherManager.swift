//
//  WeatherManager.swift
//  13.WeatherApp-practice
//
//  Created by PatrycjaOosthuizen on 18/03/2025.
//

import Foundation

struct WeatherManager {
    // Base URL for OpenWeatherMap API
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&units=metric&appid=60baf84987d69c40a38596e7ebce0a21"
    
    func fetchWeather(cityName: String) {
        // Construct the full API URL with the city name
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString:urlString)
    }
    
    // Perform networking to fetch live weather data from OpenWeatherMap
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
                    self.parseJSON(weatherData: safeData) //  Must use `self` in a closure inside a struct
                }
            }
            
            //4. Start the task
            task.resume()
            
        }
    }
    
    // Decode the JSON response into a Swift object for easy access to weather data
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            // Print weather condition
            let id = decodedData.weather[0].id
            print(getConditionName(weatherId: id))
        } catch {
            print(error)
        }
        
    }

    // challenge using a switch statement try print out a name of an icon that matches the conditions id from OpenWeatherMap
    func getConditionName(weatherId: Int) -> String {
        switch weatherId {
        case 200...232:
            return "cloud.bolt"  // Thunderstorm
        case 300...321:
            return "cloud.drizzle"    // Drizzle
        case 500...531:
            return "cloud.rain"       // Rain
        case 600...622:
            return "snow"             // Snow
        case 701...781:
            return "smoke"            // Atmosphere (Fog, Mist, Haze)
        case 800:
            return "sun.max"          // Clear
        case 801...804:
            return "cloud"            // Cloudy
        default:
            return "cloud" // Unknown weather condition
        }
    }
    
    
}
