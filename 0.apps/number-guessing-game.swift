/*
Number Guessing Game 🎯
Goal: Let the user guess a randomly generated number.
Concepts Used
✅ Variables
✅ Randomization
✅ If-Else Statements
*/
import Foundation

let targetNumber = Int.random(in: 1...10)
let userGuess = 5  // Change this to test different numbers

func checkGuess(guess: Int, target: Int) -> String {
    if guess == target {
        return "🎉 Correct! You guessed the number!"
    } else if guess < target {
        return "⬆️ Too low! Try again."
    } else {
        return "⬇️ Too high! Try again."
    }
}

print(checkGuess(guess: userGuess, target: targetNumber))
// Output: ⬆️ Too low! Try again.
// Change the value of userGuess to test different scenarios.