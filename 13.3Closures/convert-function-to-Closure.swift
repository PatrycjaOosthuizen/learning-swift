/*
Exercise : Convert Function to Closure

func greet(name: String) -> String {
    return "Hello, \(name)!"
}

*/

let greet = { (name: String) in return "Hello, \(name)!" }


// Even Shorter Version (Implicit Return)
// Since the closure is a single expression, Swift allows us to omit return:
let greet = { (name: String) in "Hello, \(name)!" }


// Version with Explicit Type Annotation. The type (String) -> String is defined in advance, so we can omit (name: String).

let greet: (String) -> String = { name in "Hello, \(name)!" } 


print(greet("Alice"))