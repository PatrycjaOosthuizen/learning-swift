/*Check If Two Strings Are Anagrams
👉 Write a function to check if two words are anagrams (i.e., "listen" and "silent").
An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
Example Output: isAnagram("listen", "silent") → true
*/
func isAnagram(_ firstWord: String, _ secondWord: String) -> Bool {
    return firstWord.lowercased().sorted() == secondWord.lowercased().sorted()
}

print(isAnagram("listen", "silent")) // Output: true
print(isAnagram("hello", "world")) // Output: false
print(isAnagram("race", "care")) // Output: true
print(isAnagram("The Eyes", "They See")) // Output: true
print(isAnagram("The Morse Code", "Here Come Dots")) // Output: true


