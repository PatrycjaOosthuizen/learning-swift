/*
 1️⃣ Exercise: Adding a Default Implementation to a Protocol
 ✅ Objective: Learn how to use protocol extensions to provide a default implementation for a method.

 Instructions:
 1️⃣ Create a protocol Describable with a method describe() -> String.
 2️⃣ Use an extension to provide a default implementation of describe().
 3️⃣ Create a struct Person with properties name and age.
 4️⃣ Make Person conform to Describable, but do not manually implement describe().
 5️⃣ Create an instance of Person and print the result of calling describe().

 Bonus: Override describe() in Person to return a custom message.
 */

import Foundation

// Step 1: Define the protocol
protocol Describable {
    func describe() -> String
}

// Step 2: Provide a default implementation using a protocol extension
extension Describable {
    func describe() -> String {
        return "This is an object that conforms to Describable."
    }
}

// Step 3: Create a struct
struct Person: Describable {
    let name: String
    let age: Int
}

// Step 4: Create an instance and call describe()
let person = Person(name: "Alice", age: 30)
print(person.describe())  // Output: "This is an object that conforms to Describable."

// Bonus: Override describe() to provide a custom message
extension Person {
    func describe() -> String {
        return "My name is \(name) and I am \(age) years old."
    }
}

// Step 5: Call the overridden method
print(person.describe())  // Output: "My name is Alice and I am 30 years old."



