/*
Exercise : Full Name Generator
Create a Person struct with firstName and lastName, and a computed property fullName that returns the full name.
*/


struct Person {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

// Example Usage
let person = Person(firstName: "John", lastName: "Doe")
print(person.fullName) // Output: John Doe
