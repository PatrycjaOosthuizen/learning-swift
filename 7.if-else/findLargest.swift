/*
Find the Largest of Two Numbers
Exercise:
Write a function findLargest that takes two integers and prints the larger number. */

func findLargest(_ a: Int, _ b: Int) {
    if a > b {
        print("\(a) is larger.")
    } else if b > a {
        print("\(b) is larger.")
    } else {
        print("Both numbers are equal.")
    }
}

// Example usage:
findLargest(10, 20)  // Output: 20 is larger.
findLargest(50, 25)  // Output: 50 is larger.
findLargest(7, 7)    // Output: Both numbers are equal.
