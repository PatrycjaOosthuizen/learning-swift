/* Randomisation Exercise
Instructions
You are going to create a password generator. We have created an array called alphabet which contains all 26 letters in the alphabet.

Write some code to randomly pick 6 letters out of the alphabet to create a random 6 character password.

You can test out your code in the main.swift file.

Hint
You can add characters together with the + symbol. e.g.

var a = "Angela"
var b = "Yu"
var c = a + b
print(c) //The output would be: "AngelaYu"
NOTE: The variable password should be a String of characters like "vacbae" or "abcefg", it should not be an array.
*/


// Solution 

let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

//The number of letters in alphabet equals 26

var password = alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)] + alphabet[Int.random(in: 0...25)]  

print(password)