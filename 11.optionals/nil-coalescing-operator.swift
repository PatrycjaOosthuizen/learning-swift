/*
Exercise: Nil-Coalescing Operator
We use the nil-coalescing operator (??) to provide a default value if the optional is nil.
Write a function that takes an optional Int? and returns its value.
If the optional has a value, return it.
If the optional is nil, return 0 instead
*/

func getNumber(value: Int?) -> Int {
    return value ?? 0
}

/*Explanation:
The Nil-Coalescing Operator (??) checks if value contains a nil or an actual number.
If value is not nil, it returns value.
If value is nil, it returns 0 as the default value.
*/



// Testing
print(getNumber(value: 5))   // Output: 5
print(getNumber(value: nil)) // Output: 0

