/*Check if a Number is Positive, Negative, or Zero
Exercise:
Write a function checkNumber that takes an integer as input and prints whether it is positive, negative, or zero.*/

func checkNumber(_ num: Int) {
    if num > 0 {
        print("The number is positive.")
    } else if num < 0 {
        print("The number is negative.")
    } else {
        print("The number is zero.")
    }
}

// Example usage:
checkNumber(5)   // Output: The number is positive.
checkNumber(-3)  // Output: The number is negative.
checkNumber(0)   // Output: The number is zero.