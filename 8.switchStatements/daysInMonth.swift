/* 
Check Month and Days
Exercise:
Write a function daysInMonth that takes a month name and prints how many days are in that month.

31 days: January, March, May, July, August, October, December
30 days: April, June, September, November
28/29 days: February
*/

func daysInMonth(_ month: String) {
    switch month.lowercased() {
    case "january", "march", "may", "july", "august", "october", "december":
        print("\(month) has 31 days.")
    case "april", "june", "september", "november":
        print("\(month) has 30 days.")
    case "february":
        print("\(month) has 28 or 29 days.")
    default:
        print("Invalid month")
    }
}

// Example usage:
daysInMonth("March")  // Output: March has 31 days.
daysInMonth("February") // Output: February has 28 or 29 days.
daysInMonth("hello") // Output: Invalid month
