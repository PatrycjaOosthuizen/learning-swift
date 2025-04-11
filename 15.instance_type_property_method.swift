import Foundation

struct MyStructure {
  let instanceProperty = "ABC"
  static let typeProperty = "123"

  func instanceMethod() {
   print("Instance method called")
  }

  static func typeMethod() {
   print("Type method called")
  }
}

// Instance Property — Needs an Instance (a constant or variable)
let myStructure = MyStructure()
print(myStructure.instanceProperty) // Prints "ABC"

// Instance Method — Needs an Instance (a constant or variable)
myStructure.instanceMethod() // Calls the instance method


// Type Property — No Need to Create an Instance - print it directly from the class:
print(MyStructure.typeProperty) // Prints "123"

// Type Method — No Need to Create an Instance - call it directly from the class:
MyStructure.typeMethod() // Calls the type method