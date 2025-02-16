/* 
Constants Exercise
Instructions
Variables store data that can vary.

Another type of container in Swift is the Constant. When you declare a constant, the data you add to it cannot change.

Constants are declared using a let instead of a var.

Try it out in this code exercise in the main.swift file.

Declare a constant called secondsInAnHour that represents the number of seconds in an hour and assign that number to it on the same line. The data type of the constant should be an Integer.

*/

//Write your code here.

// Solution
let secondsInAnHour = 3600

// alternatively:
// let secondsInAnHour: Int = 3600

// Note, constants can only be set once and cannot be assigned a new value. 
// The below does not work, because it is a constant and thus cannot be changed.
// secondsInAnHour = 1337


//Don't change the code below.
print(secondsInAnHour)