/* Exercise: Checking for nil and Forced Unwrapping in Swift
Step 1: Create a Simple Class
First, we will create a class Person with an optional address property. 
Step 2: Create Sample Data
Create instances of the Person class where one has a nil address and the other has a valid address.
Step 3: Check for nil and Force Unwrapping
Here, we check if person1.address and person2.address are not nil. If they are not nil, we force unwrap the value to access the city.
Important:
Force unwrapping (!) should only be used when you are absolutely certain that the optional will not be nil.
If the optional is nil and you force unwrap it, it will cause a runtime crash.


*/

class Address {
    var city: String
    
    init(city: String) {
        self.city = city
    }
}

class Person {
    var name: String
    var address: Address?
    
    init(name: String, address: Address?) {
        self.name = name
        self.address = address
    }
}

let person1 = Person(name: "John Doe", address: Address(city: "New York"))
let person2 = Person(name: "Jane Smith", address: nil)

func printCity(person: Person) {
    if person.address != nil {
        // Forced unwrapping after checking if it's not nil
        print("\(person.name)'s city: \(person.address!.city)")
    } else {
        print("\(person.name) has no address.")
    }
}

printCity(person: person1)  // Output: John Doe's city: New York
printCity(person: person2)  // Output: Jane Smith has no address.

