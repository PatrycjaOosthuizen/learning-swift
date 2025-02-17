/*Grading System
Exercise:
Write a function calculateGrade that takes a student's score and prints their grade based on the following rules:

90 and above → A
80 - 89 → B
70 - 79 → C
60 - 69 → D
Below 60 → F */

func calculateGrade(score: Int) {
    if score >= 90 {
        print("Grade: A")
    } else if score >= 80 {
        print("Grade: B")
    } else if score >= 70 {
        print("Grade: C")
    } else if score >= 60 {
        print("Grade: D")
    } else {
        print("Grade: F")
    }
}

// Example usage:
calculateGrade(score: 92)  // Output: Grade: A
calculateGrade(score: 75)  // Output: Grade: C
calculateGrade(score: 50)  // Output: Grade: F