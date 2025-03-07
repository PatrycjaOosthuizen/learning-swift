/*
Exercise : Inheritance
Task:
Create a base class Animal with:
- name: String
- makeSound() method that prints "Some generic sound"
Create a subclass Dog that:
- Overrides makeSound() to print "Woof!"
*/

class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Some generic sound")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Woof!")
    }
}

// Testing the classes
let myPet = Dog(name: "Buddy")
myPet.makeSound() // Output: Woof!


/* 
Explanation
- Animal is a base class with a makeSound() method.
- Dog is a subclass that overrides makeSound() to provide a dog-specific sound.
*/