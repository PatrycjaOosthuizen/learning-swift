/*
Exercise: Optional Binding
Write a function that takes an optional String? as an argument and prints its value if it's not nil. 
If the value is nil, print "No value provided".
*/

func printMessage(message: String?) {
    if let unwrappedMessage = message { //We use optional binding (if let) to check if message contains a value. If message is not nil, Swift assigns its value to unwrappedMessage
        print("Message: \(unwrappedMessage)")
    } else {
        print("No value provided")
    }
}

// Testing
printMessage(message: "Hello, Swift!")  // Output: "Message: Hello, Swift!"
printMessage(message: nil)              // Output: "No value provided"

