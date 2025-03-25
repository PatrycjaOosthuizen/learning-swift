//
//  WeatherModel.swift
//  13.WeatherApp-practice
//
//  Created by PatrycjaOosthuizen on 24/03/2025.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    // Computed Properties
    
    var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"       // Thunderstorm
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
            return "cloud"           // Unknown weather condition
        }
    }
    
}
