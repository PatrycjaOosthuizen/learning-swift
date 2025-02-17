/*Check if a Number is Even or Odd
Exercise:
Write a function isEvenOrOdd that takes an integer and prints whether it is even or odd.*/

func isEvenOrOdd(_ num: Int) {
    if num % 2 == 0 {
        print("\(num) is even.")
    } else {
        print("\(num) is odd.")
    }
}

// Example usage:
isEvenOrOdd(8)   // Output: 8 is even.
isEvenOrOdd(5)   // Output: 5 is odd.