import UIKit

let pizzaInInches: Int = 12

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
    set {
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}

numberOfSlices = 10

