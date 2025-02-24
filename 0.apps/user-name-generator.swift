/*
Username Generator 👤
Goal: Create random usernames.
Concepts Used
✅ Variables
✅ Arrays
✅ Randomization
*/


import Foundation

let adjectives = ["Cool", "Fast", "Happy", "Brave"]
let nouns = ["Tiger", "Panda", "Ninja", "Coder"]

func generateUsername() -> String {
    return adjectives.randomElement()! + nouns.randomElement()!
}

print("👤 Your username: \(generateUsername())")
