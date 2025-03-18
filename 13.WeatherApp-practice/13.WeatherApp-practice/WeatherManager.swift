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
        print(urlString)
    }
}
