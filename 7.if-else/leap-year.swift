/* 
Instructions
Every 4 years, there is a leap year. Leap years have an extra day in February to bring the total number of days up to 366 instead of 365.

The 3 conditions for any given year to be a leap year are:

The year is exactly divisible by four (with no reminder) then it is a leap year, unless:

If the year is also divisible by 100 (years ending in two zeros), then it is not a leap year, except if

It is also divisible by 400 (in this case it will be a leap year).

Complete the isLeap() function to print "YES" if the input is a leap year and "NO" if the input year was not.

Double Checking Leap Years
You can check Wikipedia for the conditions expressed in your native language.

For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is. */


var aYear =  Int(readLine()!)! 

func isLeap(year: Int) {

if year % 100 == 0 && year % 400 == 0 {
print("YES")
}else if year % 100 == 0 {
print("NO")
} else if year % 4 == 0 {
print("YES")
} else {
print("NO")
}

}
isLeap(year: aYear) // Output: YES or NO
