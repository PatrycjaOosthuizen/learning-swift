import UIKit

let pizzaInInches: Int = 12
var numberOfPeople: Int = 6
let slicesPerPerson: Int = 3

var numberOfSlices: Int {
    get {
       return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4

print(numberOfPeople)


