/*
 Count Word Frequency in a Sentence
👉 Write a function that counts occurrences of each word in a sentence.
*/
func wordFrequency(_ sentence: String) -> [String: Int] {
    var frequency: [String: Int] = [:]  // Dictionary to store word counts
    let words = sentence.lowercased().split(separator: " ").map { String($0) }   // Converts lowercase. Splits the sentence into words based on spaces.  Converts Substring elements into String.
    
    for word in words { // Check if it exists in the dictionary.
        frequency[word, default: 0] += 1 // Set its count to 0. Increase count for each word
    }
    
    return frequency
}

// Test case
print(wordFrequency("Swift is awesome and Swift is powerful"))
// Output: ["swift": 2, "is": 2, "awesome": 1, "and": 1, "powerful": 1]


/*
1st "swift" → { "swift": 1 }
2nd "is" → { "swift": 1, "is": 1 }
3rd "awesome" → { "swift": 1, "is": 1, "awesome": 1 }
4th "and" → { "swift": 1, "is": 1, "awesome": 1, "and": 1 }
5th "swift" → { "swift": 2, "is": 1, "awesome": 1, "and": 1 }
6th "is" → { "swift": 2, "is": 2, "awesome": 1, "and": 1 }
7th "powerful" → { "swift": 2, "is": 2, "awesome": 1, "and": 1, "powerful": 1 }
*/