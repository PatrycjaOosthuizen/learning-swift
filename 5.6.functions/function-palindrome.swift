/* Function to Check If a String is a Palindrome
👉 Write a function that checks if a given string is a palindrome (reads the same backward).
*/

func isPalindrome(_ text: String) -> Bool {
    let reversedText = String(text.lowercased().reversed())
    return text.lowercased() == reversedText
}

print(isPalindrome("racecar")) // Output: true
print(isPalindrome("hello"))   // Output: false