/* 
Exercise : Sorting Strings Alphabetically (Case-Insensitive)
Sort names alphabetically, ignoring case. For example, "Amy" should appear before "bob".
*/  
let names = ["banana", "Apple", "cherry", "apple", "Banana"]

let sortedNames = names.sorted { (first: String, second: String) -> Bool in
    return first.lowercased() < second.lowercased()
}


//Shorter Version (Implicit). 
// Shortened by: 
// - Removing parameter types and return type (inferred).
// - Using $0 (first item) and $1 (second item).
let sortedNames = names.sorted { $0.lowercased() < $1.lowercased() }


print(sortedNames) // Output: ["Apple", "apple", "banana", "Banana", "cherry"]