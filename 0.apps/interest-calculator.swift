/*
Simple Interest Calculator 💰
Goal: Calculate interest on a loan.
Concepts Used
✅ Variables
✅ Functions
*/
import Foundation

func calculateInterest(principal: Double, rate: Double, time: Double) -> Double {
    return (principal * rate * time) / 100
}

print("💰 Interest: $\(calculateInterest(principal: 9876.76, rate: 3, time: 2))")
