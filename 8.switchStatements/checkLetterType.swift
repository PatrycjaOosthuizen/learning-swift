/* 
Check Vowel or Consonant
Exercise:
Write a function checkLetterType that takes a character and prints whether it is a vowel or a consonant.

Vowels: a, e, i, o, u
Any other letter → "Consonant" 
*/

func checkLetterType(_ letter: Character) {
    switch letter {
    case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
        print("\(letter) is a vowel.")
    default:
        print("\(letter) is a consonant.")
    }
}

// Example usage:
checkLetterType("a") // Output: a is a vowel.
checkLetterType("B") // Output: B is a consonant.