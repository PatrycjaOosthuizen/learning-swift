import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}
 func subtract(no1: Int, no2: Int) -> Int {
    return no1 - no2
}

func divide(no1: Int, no2: Int) -> Int {
    return no1 / no2
}

calculator(n1: 2, n2: 3, operation: add)
calculator(n1: 2, n2: 3, operation: multiply)
calculator(n1: 2, n2: 3, operation: subtract)
calculator(n1: 2, n2: 3, operation: divide)