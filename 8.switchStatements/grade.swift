/* 
Grade System
Exercise:
Write a function getGrade that takes a score (0-100) and prints the corresponding grade:

90-100 → A
80-89 → B
70-79 → C
60-69 → D
Below 60 → F
*/

// The case conditions use ranges (90...100) to check multiple values at once.

func getGrade(_ score: Int) {
    switch score {
    case 90...100:
        print("Grade: A")
    case 80...89:
        print("Grade: B")
    case 70...79:
        print("Grade: C")
    case 60...69:
        print("Grade: D")
    default:
        print("Grade: F")
    }
}

// Example usage:
getGrade(85)  // Output: Grade: B
getGrade(72)  // Output: Grade: C
getGrade(50)  // Output: Grade: F