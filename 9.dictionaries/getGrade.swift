/* 
Access a Value from a Dictionary
Write a function getGrade(for student: String) that takes a student’s name and returns their grade. If the student is not found, return "Not found". 
*/
var studentGrades: [String: Int] = [
    "Alice": 85,
    "Bob": 90,
    "Charlie": 78
]
func getGrade(for student: String) -> String {
    if let grade = studentGrades[student] {
        return "\(student) has a grade of \(grade)"
    } else {
        return "Not found"
    }
}

print(getGrade(for: "Alice"))   // Output: Grade: 85
print(getGrade(for: "David"))   // Output: Not found
print(getGrade(for: "Bob"))     // Output: Grade: 90

// update Bob's grade
studentGrades["Bob"] = 95
print(getGrade(for: "Bob"))     // Output: Grade: 95
