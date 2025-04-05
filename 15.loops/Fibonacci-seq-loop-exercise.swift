/*
Loops Coding Exercise
The Fibonacci sequence is a series of numbers that is created by adding the 2 previous numbers.

e.g. 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...

The first 2 numbers are always 0 and 1.

The 3rd number is calculated like so:

0 + 1 = 1

The 4th number is calculated like so:

1 + 1 = 2

etc.

Create a function that prints out the Fibonacci sequence as an array for the specified number of digits.

e.g. Calling fibonacci(n: 5) should print:

[0, 1, 1, 2, 3]

But calling fibonacci(n: 10) should print:

[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

*/

class Assignment {
    
    // Generates the first `n` numbers of the Fibonacci sequence.
    func fibonacci(n: Int) -> [Int] {
        var fibArray: [Int] = []
        
        // Handle edge cases
        // If n is less than or equal to 0, return an empty array
        if n <= 0 {
            return []
            //If the user ask for just 1 number, return [0].
        } else if n == 1 {
            return [0]
            //If the user ask for 2 numbers, return the first two: [0, 1].
        } else if n == 2 {
            return [0, 1]
        }

        // Start with the first two numbers
        fibArray = [0, 1]
        
         /* This loop starts from i = 2 (since the first two numbers are already in the array).
         Each loop calculates the next number:
         fibArray[i - 1] → previous number
         fibArray[i - 2] → the one before that 
         Adds their sum to the array. 
         */
        for i in 2..<n {
            let nextNumber = fibArray[i - 1] + fibArray[i - 2]
            fibArray.append(nextNumber)
        }
        
        return fibArray
    }
}

// Example usage
let assignment = Assignment()
let result = assignment.fibonacci(n: 10)
print(result)  // Output: [0, 1, 1, 2, 3, 5, 8]
