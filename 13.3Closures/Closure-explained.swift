import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

// calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
//   return no1 * no2
// })
// 
// inferring the type of the parameters and the return type

// let result = calculator(n1: 2, n2: 3, operation: {$0 * $1}) // if the last parameter is a closure, you can remove the last parameter name
// print(result)

 let result = calculator(n1: 2, n2: 3) {$0 * $1} // if the last parameter is a closure, you can remove the last parameter name- it is called trailing closure
 print(result)