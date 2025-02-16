/* Functions 2 Exercise
Instructions
In this coding exercise, you're going to create a simple calculator. You will need to create 4 functions so that when you run the code, a and b are added/subtracted/multiplied and divided by each other.

For example, if

a = 3 and b = 4

This is what you would expect to be printed from the calculator:

7
-1
12
0.75
Because:

3 + 4 = 7,

3 - 4 = -1,

3 x 4 = 12,

3 ÷ 4 = 0.75

See if you can write the four different functions in the main.swift file which do the calculations and then print out the values as per the example above.

Hint
Did you get 0 for the last value? Hint: you'll need to remind yourself about Swift data types and maybe this link to Google will help

Test Your Code with Different Inputs
For a working calculator a and b should be able to be any number. To read your own inputs directly from the console, replace lines 3 and 4 in the main.swift with:

  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
Now if you run your code again, it will ask you for some input values. The values need to be numbers and they will be substituted into your code as the variables a and b. If you provide an input, say 5 for a and 9 for b, your console should look like this:

5
9
14
-4
45
0.5555555555555556
*/


//Don't change this code:
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.

func add(n1: Int, n2: Int) {
  print(n1 + n2)
}

func subtract(n1: Int, n2: Int) {
  print(n1 - n2)
}

func multiply(n1: Int, n2: Int) {
  print(n1 * n2)
}

func divide(n1: Int, n2: Int) {
  let decimalN1 = Double(n1)
  let decimalN2 = Double(n2)
  print(decimalN1 / decimalN2)
}