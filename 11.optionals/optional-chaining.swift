/*
Exercise : Optional Chaining
Define a Person class that has an optional address property. 
The Address class should have a city property. 
Write a function to safely get the city name of a person using optional chaining.
*/

class Address {
    var city: String //contains a single property, city, of type String.
    
    init(city: String) {  //initializer takes a city string and initializes the city property.
        self.city = city
    }
}

class Person { //This class represents a person and contains an optional property, address, which is of type Address? (an optional).
    var address: Address?
    
    init(address: Address?) {  // The init(address:) initializer initializes the address property, and the property is optional (Address?), meaning a person might or might not have an address.
        self.address = address
    }
}

// optional binding with an if let statement to safely unwrap the optional and provide a default value if nil:
func getCity(person: Person) -> String {
    if let address = person.address {
        return address.city
    } else {
        return "No city found"
    }
}


/* Other way to write fuction : 
The getCity function takes a Person object as an argument and attempts to return the city of that person’s address.

func getCity(person: Person) -> String {
    return person.address?.city ?? "No city found"
}

*/

// Testing
let person1 = Person(address: Address(city: "New York"))
print(getCity(person: person1))  // Output: "City: New York"

let person2 = Person(address: nil)
print(getCity(person: person2))  // Output: "No city found"
