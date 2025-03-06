/* 
Exercise : Person and Employee Inheritance
Task:
1. Create a superclass called Person with the following properties:
 - name: String
 - age: Int
2. Create a subclass of Person called Employee with the following:
 - Property employeeID: Int
 - Method work() that prints "Employee is working".
3.Create another subclass of Employee called Manager with the following:
 - Method work() that overrides the work() method to print "Manager is overseeing work.
*/

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Employee: Person {
    var employeeID: Int

    init(name: String, age: Int, employeeID: Int) {
        self.employeeID = employeeID
        super.init(name: name, age: age)
    }

    func work() {
        print("Employee is working")
    }
}

class Manager: Employee {
    override func work() {
        print("Manager is overseeing work")
    }
}

// Testing the classes
let person = Person(name: "John", age: 30)
print(person.name)  // Output: John

let employee = Employee(name: "Alice", age: 28, employeeID: 123)
employee.work()  // Output: Employee is working

let manager = Manager(name: "Bob", age: 35, employeeID: 456)
manager.work()  // Output: Manager is overseeing work


