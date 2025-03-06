/* 
Advanced Exercise : Optionals and Optional Binding
Task:
Create a class Person with an optional property phoneNumber: String?.
- Create an instance of Person with a phoneNumber.
- Use optional binding to safely unwrap the phoneNumber and print it if it exists.
- If the phone number is nil, print "No phone number available.
*/

class Person {
    var name: String
    var phoneNumber: String?

    init(name: String, phoneNumber: String?) {
        self.name = name
        self.phoneNumber = phoneNumber
    }

    func printPhoneNumber() {
        if let phone = phoneNumber {
            print(phone)
        } else {
            print("No phone number available")
        }
    }
}

// Testing the class
let person1 = Person(name: "John", phoneNumber: "123-456-7890")
let person2 = Person(name: "Jane", phoneNumber: nil)


person1.printPhoneNumber()  // Output: 123-456-7890
person2.printPhoneNumber()  // Output: No phone number available

