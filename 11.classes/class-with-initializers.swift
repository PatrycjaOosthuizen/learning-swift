/*
Exercise : Class with Initializers
Task:
Create a class Rectangle with the following:
- width: Double
- height: Double
- A computed property area (width × height)
- An initializer to set width and height
*/
class Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

// Testing the class
let rect = Rectangle(width: 5, height: 10)
print(rect.area) // Output: 50.0


/* 
Explanation
- area is a computed property, meaning it updates automatically based on width and height.
- The init method initializes width and height.
*/