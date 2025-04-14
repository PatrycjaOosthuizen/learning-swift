//  Exercise : Find the Factorial of a Number
// Calculate n! (factorial) using a while loop.
// E.g., 5! = 5 × 4 × 3 × 2 × 1 = 120

let n = 5
var result = 1
var counter = n

while counter > 0 {
    result *= counter
    counter -= 1
}

print("\(n)! = \(result)")
