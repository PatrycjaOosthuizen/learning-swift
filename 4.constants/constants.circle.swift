/* Constants in Functions
Exercise:
Write a function that takes a radius as input and returns the circumference of a circle using a constant pi. */

//Solution: 

func circumference(radius: Double) -> Double {
    let pi = 3.14159
    return 2 * pi * radius
}

// Example usage:
print(circumference(radius: 5))
// Output: 31.4159

/*Explanation:

- pi is declared inside the function and remains unchanged throughout execution.
- The function calculates circumference = 2 × π × radius. */
