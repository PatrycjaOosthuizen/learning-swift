/* 
Random Password Generator 🔑 (Arrays & Randomization)
- Concepts used: Arrays, Randomization
- Description: Generates a random password with letters, numbers, and symbols.
*/
import Foundation

// Characters to use for password
let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let numbers = "0123456789"
let symbols = "!@#$%^&*"
let allCharacters = Array(letters + numbers + symbols)

// Function to generate a password
func generatePassword(length: Int) -> String {
    var password = ""
    for _ in 0..<length {
        if let randomChar = allCharacters.randomElement() {
            password.append(randomChar)
        }
    }
    return password
}

// Generate and display a password
print("🔑 Your password: \(generatePassword(length: 10))")