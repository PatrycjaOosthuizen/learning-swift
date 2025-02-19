/* 
Create an Array of Integers and Find the Sum
Task:
Create an array of integers and calculate the sum of all elements in that array.

Step-by-Step Breakdown:
1. Create an array: An array is a collection that stores multiple values. In this case, you’ll create an array of integers: [1, 2, 3, 4, 5].
2. Function to calculate the sum: We need to write a function that will:
- Take an array as input.
- Loop through the array.
- Add up all the values in the array.
3. Return the sum: Once the loop finishes, return the sum of all elements.
*/

func sum(of numbers: [Int]) -> Int {
    var total = 0
    for number in numbers {  // Looping through the array
        total += number  // Adding each number to the total
    }
    return total  // Returning the final sum
}

let numbers = [1, 2, 3, 4, 5]  // Our array of integers
let result = sum(of: numbers)  // Calling the function to calculate the sum
print(result)  // Output: 15