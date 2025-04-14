// Exercise 4: Print Only Words Longer Than 4 Letters
// Given an array of words, print only the words that are longer than 4 letters.

let words = ["milk", "chocolate", "tea", "coffee", "apple"]

for word in words {
    if word.count > 4 {
        print(word)
    }
}
