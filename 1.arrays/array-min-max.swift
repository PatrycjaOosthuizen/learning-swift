 /* 
Find the Maximum and Minimum Values in an Array
Task:
Create an array of integers and write a function to find both the maximum and minimum values.

Step-by-Step Breakdown:
1. Create an array: We’ll start with an array of integers like [12, 3, 9, 20, 7].
2. Initial Values: Start by setting the first element of the array as both the minimum and maximum values.
3. Loop Through the Array: We’ll loop through each element in the array to check if it is smaller or larger than our current min and max values.
4. Return a Tuple: The function will return a tuple containing both the minimum and maximum values.
*/

func findMinMax(in numbers: [Int]) -> (min: Int, max: Int)? {
    guard let first = numbers.first else { return nil }  // Check if the array is empty
    var min = first  // Initial min value
    var max = first  // Initial max value

    for number in numbers {  // Loop through each number
        if number < min {
            min = number  // Update min if smaller number is found
        }
        if number > max {
            max = number  // Update max if larger number is found
        }
    }
    return (min, max)  // Return both min and max as a tuple
}

let numbers = [12, 3, 9, 20, 7]  // Example array
if let result = findMinMax(in: numbers) {
    print("Min: \(result.min), Max: \(result.max)")  // Output: Min: 3, Max: 20
}