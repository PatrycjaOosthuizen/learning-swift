/*
Exercise : Employee Payment System
Task:
1.Create a superclass called Employee with:
 - Properties: name: String, salary: Double
 - Method calculateBonus() that returns 10% of salary.
2.Create a subclass called Manager that:
 - Overrides calculateBonus() to return 20% of salary.
3.Create a subclass called Intern that:
 - Overrides calculateBonus() to return $0 bonus.
 */

class Employee {
    var name: String
    var salary: Double

    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }

    func calculateBonus() -> Double {
        return salary * 0.10
    }
}

class Manager: Employee {
    override func calculateBonus() -> Double {
        return salary * 0.20
    }
}

class Intern: Employee {
    override func calculateBonus() -> Double {
        return 0.0
    }
}

// Testing the classes
let emp = Employee(name: "John", salary: 5000)
print(emp.calculateBonus())  // Output: 500.0

let manager = Manager(name: "Sarah", salary: 7000)
print(manager.calculateBonus())  // Output: 1400.0

let intern = Intern(name: "Jake", salary: 1500)
print(intern.calculateBonus())  // Output: 0.0

