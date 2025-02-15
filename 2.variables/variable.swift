/* Variables Exercise 
Write a program that switches the values stored in the variables a and b inside the main.swift file.
Your program should work for different inputs. e.g. any value of a and b.
Hint
- You should not have to type any numbers in your code.
- You might need to make some more variables. */

// Solution:

var a = 5
var b = 8

var c = a
a = b
b = c

print("a: \(a)")
print("b: \(b)")