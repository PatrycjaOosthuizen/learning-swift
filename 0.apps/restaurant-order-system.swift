/*
Restaurant Order System 🍔
Goal: Simulate ordering food.
Concepts Used
✅ Variables
✅ Dictionaries
*/

import Foundation

var menu = ["Burger": 5, "Pizza": 8, "Pasta": 7]

func orderFood(item: String) {
    if let price = menu[item] {
        print("🍔 Ordered \(item) for $\(price).")
    } else {
        print("❌ Item not available.")
    }
}

orderFood(item: "Pizza")
orderFood(item: "Salad")  // ❌ Item not available.