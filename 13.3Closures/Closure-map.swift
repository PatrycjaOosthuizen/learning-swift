import UIKit

let array = [6,2,3,9,4,1]

/* 
Exercise change this to closure: 

func addOne(n1: Int) -> Int {
    return n1 + 1
}   

array.map(addOne)

*/

My answer :
// { n1: Int) -> Int in return n1 + 1 }

// array.map({ (n1: Int) -> Int in return n1 + 1})

//Reduce the code to:
print(array.map{$0 + 1})

/* swift has useful high level functions like map, reduce filter that can be used with closures.
map: loops through each item in the array and applies the same code to each item
reduce: combines all items in the array to create a single value
filter: loops through each item in the array and returns an array that meets a certain condition

Closure allow you to package annonomous blocks of functionality that can be passed around in your code.
*/