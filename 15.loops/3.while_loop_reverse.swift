// Exercise 3:
// Given an integer, reverse its digits.
// For example: 1234 → 4321

var number = 1234
var reversed = 0

while number != 0 {
    let digit = number % 10
    reversed = reversed * 10 + digit
    number /= 10
}

print(reversed) 
