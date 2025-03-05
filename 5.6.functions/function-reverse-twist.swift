/* 
Reverse a String Without Using .reversed()
👉 Write a function that reverses a string manually.
*/
func reverseString(_ str: String) -> String {
    var reversedString = ""
    
    for character in str {
        reversedString = String(character) + reversedString
    }
    
    return reversedString
}

print(reverseString("Swift")) // Output: "tfiwS"