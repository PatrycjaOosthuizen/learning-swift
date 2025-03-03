/*
Intermediate Function Exercises
Function to Return the Largest of Three Numbers
👉 Write a function that takes three numbers as input and returns the largest one. 
*/

func findLargest(a: Int, b: Int, c: Int) -> Int {
    return max(a, max(b, c))
}

print(findLargest(a: 10, b: 25, c: 17)) 