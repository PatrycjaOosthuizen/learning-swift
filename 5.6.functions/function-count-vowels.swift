/* Function toCount Vowels in a String
👉 Write a function that takes a string and returns the number of vowels (a, e, i, o, u).
*/

func countVowels(in text: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    return text.lowercased().filter { vowels.contains($0) }.count
}

print(countVowels(in: "Hello World")) // Output: 3

