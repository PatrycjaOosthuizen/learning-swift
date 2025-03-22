/* 
Exercise : Sorting with Closures
Sort an array of numbers in descending order using a closure.
*/
import UIKit

var numbers =[1,5,3,9,2,7,6,8,4]

func sortDescending (n1: Int, n2: Int) -> Bool {
    return n1 > n2
}

// created closure from the function
{ (n1: Int, n2: Int) -> Bool in
    return a > b
}

// sort the array using the closure using the sort(by:) method

numbers.sort(by: { (n1: Int, n2: Int) -> Bool in
    return a > b
})

// Rewrite the previous function call using trailing closure syntax.

//Explicit Closure Argument Label (by:)
numbers.sort(by: { $0 > $1 })


// Trailing Closure Syntax (Shorter)
// Since the closure is the last argument of sort(by:), Swift allows trailing closure syntax, omitting by:
numbers.sort { $0 > $1 }


print(numbers)