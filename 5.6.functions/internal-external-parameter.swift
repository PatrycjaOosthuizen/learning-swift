/* ✏️ Exercise : Create a Method with Internal and External Parameter Names

Task:
Create a method that greets a person by their name and age.

- name should have external name personName

- age should have external name personAge

When you call it, you should write:
greet(personName: "John", personAge: 25)

and inside, it should print:
Hello John, you are 25 years old!
*/

// Create a struct to organize methods
struct Greeter {
    
    // Method with external and internal parameter names
    func greet(personName name: String, personAge age: Int) {
        print("Hello \(name), you are \(age) years old!")
    }
}

// Create an instance of Greeter
let greeter = Greeter()

// Call the method
greeter.greet(personName: "John", personAge: 25)


// ✅ When you call it:
greeter.greet(personName: "John", personAge: 25)

// ✅ When you use inside:
print("Hello \(name), you are \(age) years old!")

