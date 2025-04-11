// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/typecasting/


import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breath under water.")
    }
}
let alice = Human(n: "Alice")
let jack = Human(n: "Jack")
let nemo = Fish(n: "Nemo")

let neighbors = [alice, jack, nemo]

// is - Type Checking
// let cell = UItableViewCell()
// if cell is UItableViewCell() {
// print("the data type matches!)

 /* if neighbors[2] is Human {
    print("First Neihbor is a Human")
}
  */

// as! - Forced Downcast - we know data type
// let messageCell = cell as! MessageCell
//

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.breatheUnderWater()
        }
    }
}

findNemo(from: neighbors)

// as? safer way of performing downcasting capability - ? optional - We are not sure about data type
// if let messageCell = cell as? MessageCell {
   // Then can use messageCell's capabilities
// }

/* if let fish = neighbors[1] as? Fish {
    fish.breatheUnderWater()
} else{
    print("Casting has failed")
}
*/


// as - Upcast - is used to raised a object to superclasses type. This is another form of casting but it is used less fequently


// In programming, casting is helpful because sometimes we don’t know what the type of object is ahead of time. We check to see if the object is the type we need, and if it is, we cast it so we can use it properly.
