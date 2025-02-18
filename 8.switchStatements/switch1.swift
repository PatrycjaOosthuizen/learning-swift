/* 
Switch Exercise
Instructions
Create a program that takes a number (Int) as an input and prints the corresponding day of the week using a switch statement.

e.g. If the input was 5

Then the function should print:

"Friday"

If the input number does not match a day of the week then your program should print "Error".

The weekday printed needs to have the first letter capitalised and spelt correctly.

*/


var aNumber =  Int(readLine()!)! 

func dayOfTheWeek(day: Int) {
  
    switch day {
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
    default:
        print("Error")
    }
}
// Example usage:
dayOfWeek(3)  // Output: Tuesday
dayOfWeek(7)  // Output: Saturday
dayOfWeek(10) // Output: Invalid day
  

