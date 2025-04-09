// Exercise 4: number guessing game 
// You choose a secret number (e.g. 7)
// The while loop keeps asking for guesses until the guess matches
// readLine() gets user input, Int(input) converts it to a number
// Once they guess right, it exits and prints a celebration

import Foundation
let secretNumber = 7    
var guess = 0

while guess != secretNumber {
    print("Guess the number (1-10):")
    if let input = readLine(), let number = Int(input) {
        guess = number
    }
}

print("🎉 Correct! The number was \(secretNumber)")