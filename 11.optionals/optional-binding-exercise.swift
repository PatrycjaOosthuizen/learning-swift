/* 
Write a function that takes an optional Int? and returns its value.
If the optional has a value, return it.
If the optional is nil, return 0 instead
*/

func getNumber(value: Int?) -> Int {               
     if let unwrappedValue = value {
     return unwrappedValue
} else {
     return 0
  }
}

// optional binding with if let, which safely unwraps the optional before using it.

print(getNumber(value: 42))  // Output: 42 (because value is not nil)
print(getNumber(value: nil)) // Output: 0 (because value is nil, so default 0 is returned)
