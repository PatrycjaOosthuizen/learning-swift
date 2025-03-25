//
//  WeatherData.swift
//  13.WeatherApp-practice
//
//  Created by PatrycjaOosthuizen on 24/03/2025.
//

import Foundation

// Struct for individual weather data
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather] // Array of Weather objects
    
}

struct Main: Codable {
    let temp: Double
}

// Struct for the top-level JSON response
struct Weather: Codable {
    let id: Int
    let description: String
}
