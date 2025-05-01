import UIKit

let pizzaInInches: Int = 14

var numnberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

print(numnberOfSlices)
