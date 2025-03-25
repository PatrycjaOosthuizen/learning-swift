/*
Exercise : Rectangle Area
Define a struct Rectangle with properties width and height, and a computed property area that returns the area of the rectangle.
*/


struct Rectangle {
    var width: Double
    var height: Double
    
    // Computed property for area
    var area: Double {
        return width * height
    }
}

// Example Usage
let rect = Rectangle(width: 10, height: 5)
print(rect.area) // Output: 50.0

