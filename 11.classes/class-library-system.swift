/*
Exercise : Library System
Task:
1.Create a superclass called Book with:
 - Properties: title: String, author: String
 - Method getDetails() returning "Title: [title], Author: [author]"
2.Create a subclass called Ebook with:
 - Additional property: fileSize: Double (in MB).
 - Override getDetails() to include "File Size: [fileSize]MB".

 Understanding the Problem
Need to create a Book class and a subclass Ebook, where:
1. Book stores title and author and has a method to display details.
2. Ebook extends Book by adding file size and overrides the method to include this new detail.
*/

// superclass Book with two properties.
class Book {
    var title: String
    var author: String

   //The initializer (init) sets the values for title and author
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
   //The getDetails() method returns a formatted string.
    func getDetails() -> String {
        return "Title: \(title), Author: \(author)"
    }
}
// Create a subclass Ebook that extends Book
class Ebook: Book {
    var fileSize: Double  // Add new property. File size in MB
    
    //Define an initializer 
    init(title: String, author: String, fileSize: Double) {
        self.fileSize = fileSize // sets the fileSize property.
        super.init(title: title, author: author) // Calls the Book class’s initializer to reuse the title and author properties.
    }

    override func getDetails() -> String {
        return super.getDetails() + ", File Size: \(fileSize)MB" // calls the original method from Book and add the file size.
    }
}

// Testing
let ebook = Ebook(title: "Swift Programming", author: "Apple", fileSize: 2.5)
print(ebook.getDetails())  
// Output: "Title: Swift Programming, Author: Apple, File Size: 2.5MB"

