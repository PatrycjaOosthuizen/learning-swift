/* 
Exercise: Force Unwrapping
Create an optional Double?, assign it a value, and force unwrap it to print the square root.
*/

// Declaring an Optional Double
// It might contain a value (16.0) or be nil.
var number: Double? = 16.0

//Checking for nil
if number != nil {
    print("The square root is \(sqrt(number!))")
} else {
    print("No valid number found.")
}

// f number is not nil, Swift extracts its value.
// If number is nil, the program it prints "No valid number found." instead of crashing.

// Output: "The square root is 4.0"
