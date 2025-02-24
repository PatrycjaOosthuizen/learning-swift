/*
Temperature Converter 🌡
Convert Celsius to Fahrenheit.
Concepts Used
✅ Variables
✅ Functions
*/
import Foundation

func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}
print("🌡 25°C is \(celsiusToFahrenheit(25))°F")