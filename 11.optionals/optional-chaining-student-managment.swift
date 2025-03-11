/*
Exercise: Using Optional Chaining (?.) in Swift
Problem Statement:
You are designing a Student Management System where each student has an optional reference to a School object. 
The School class has a principal's name property. 
Your task is to safely retrieve the principal’s name for a student, using optional chaining (?.).
- The School class has a principalName property.
- The Student class has an optional school property because not all students may be enrolled in a school.
*/

class School {
  var principalName: String

  init(principalName: String) {
    self.principalName = principalName
  }
}

class Student{
  var name: String
  var school: School? 

init(name: String, school: School?) {
    self.name = name
    self.school = school
  }
}

func getPrincipalName(for student: Student) -> String {
    return student.school?.principalName ?? "No principal found"
}
/*
Explanation:
Optional Chaining (?.):

student.school?.principalName attempts to access principalName only if school is not nil.
If school is nil, the expression evaluates to nil instead of crashing.
Nil-Coalescing Operator (??):

If the optional chaining returns nil, "No principal found" is used as a default value.
*/ 

/* 
// optional binding
func getPrincipalName(for student: Student) -> String {
    if let school = student.school { // Check if school is not nil
        return school.principalName
    } else {
        return "No principal found"
    }
}
*/



// Test Cases
let school1 = School(principalName: "Mr. Johnson")
let student1 = Student(name: "Alice", school: school1)   // Student with a school
let student2 = Student(name: "Bob", school: nil)        // Student with no school

print(getPrincipalName(for: student1)) // Output: "Mr. Johnson"
print(getPrincipalName(for: student2)) // Output: "No principal found"

