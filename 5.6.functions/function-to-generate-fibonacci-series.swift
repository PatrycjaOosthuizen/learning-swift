/*
Advanced Function Exercises
 Function to Generate Fibonacci Series
👉 Write a function that generates the first n numbers of the Fibonacci sequence.
Example Output: fibonacci(6) → [0, 1, 1, 2, 3, 5]
Function to Generate Fibonacci Series
The Fibonacci sequence is named after Leonardo Fibonacci, an Italian mathematician who introduced it to the west in the 13th century. 
The sequence is a series of numbers where each number is the sum of the two preceding ones, 
usually starting with 0 and 1. The sequence starts with 0 and 1, and the next number in the sequence is the sum of the two preceding numbers. 
The sequence goes as follows: 0, 1, 1, 2, 3, 5, 8, 13, 21, and so on. 
The Fibonacci sequence is used in various fields, such as computer algorithms, mathematics, and art.

What is the Fibonacci Sequence?
The Fibonacci sequence is a series of numbers where:
 - Each number is the sum of the two preceding ones.
 - It starts with 0 and 1.

 Formula: F(n) = F(n-1) + F(n-2)
 Where:
  - F(n) is the term number.
  - F(n-1) is the previous term (n-1).
  - F(n-2) is the term before that (n-2).

F(0)=0
F(1)=1
F(2)=F(1)+F(0)=1+0=1
F(3)=F(2)+F(1)=1+1=2
F(4)=F(3)+F(2)=2+1=3
F(5)=F(4)+F(3)=3+2=5
F(6)=F(5)+F(4)=5+3=8
F(7)=F(6)+F(5)=8+5=13
F(8)=F(7)+F(6)=13+8=21
etc.

Example Output for First 6 Terms: [0,1,1,2,3,5]
*/

func fibonacci(_ n: Int) -> [Int] {
    guard n > 1 else { return [0] } // If n is 1, return [0], since the Fibonacci sequence starts with 0.
    
    var sequence = [0, 1] // Start with first two Fibonacci numbers
    
    while sequence.count < n { // The while loop runs until the array has 'n' elements.
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2] // This gets the last two elements of the array and adds them. The result is stored in nextNumber.
        sequence.append(nextNumber) // Add new number to sequence
    }
    
    return sequence //After generating n numbers, we return the array.
}

print(fibonacci(6)) // Output: [0, 1, 1, 2, 3, 5]