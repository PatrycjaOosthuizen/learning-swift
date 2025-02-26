/*
Currency Converter 💱
Goal: Convert USD to EUR.
Concepts Used
✅ Variables
✅ Functions
*/

import Foundation

func convertToEUR(dollars: Double) -> Double {
    let exchangeRate = 0.85
    return dollars * exchangeRate
}

print("💱 $100 = €\(convertToEUR(dollars: 100))")
print("💱 $80 = €\(convertToEUR(dollars: 80))")
