/* 
Exercise : Protocol with Initialiser Requirement
Define a protocol Describable that requires an initializer with a String parameter. 
Implement a Book struct that conforms to this protocol.
*/

protocol Describable {
    init(description: String)
}

struct Book: Describable {
    var description: String

    init(description: String) {
        self.description = description
    }
}

let myBook = Book(description: "A science fiction novel.")
print(myBook.description)  // Output: A science fiction novel.
