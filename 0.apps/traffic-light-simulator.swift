/*
Traffic Light Simulator 🚦
==========================
Goal: Simulate a traffic light system where a light is randomly chosen, and an action is provided accordingly.
Concepts Used
✅ Variables
✅ Arrays
✅ Randomization
✅ Switch Statements
*/

import Foundation

// Possible traffic light colors
let trafficLights = ["Green", "Yellow", "Red"]

// Randomly pick a traffic light color
let randomLight = trafficLights.randomElement()!

// Function to determine the action based on the traffic light color
func trafficAction(light: String) -> String {
    switch light {
    case "Green":
        return "🚗 Go"
    case "Yellow":
        return "⚠️ Slow Down"
    case "Red":
        return "🛑 Stop"
    default:
        return "❓ Unknown Signal"
    }
}

// Display the result
print("🚦 Light: \(randomLight) → \(trafficAction(light: randomLight))")

