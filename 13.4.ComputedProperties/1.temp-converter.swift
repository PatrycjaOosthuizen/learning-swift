/*
Exercise : Temperature Converter
Create a struct Temperature that stores temperature in Celsius but provides a computed property to get the equivalent value in Fahrenheit.

var aProperty : Type {
    get {
       return the value
    }
}

*/

struct Temperature {
    var celsius: Double
    
    // Computed property to get temperature in Fahrenheit
    var fahrenheit: Double {
        get {
            return (celsius * 9/5) + 32
        }
    }
}

// Example Usage
let temp = Temperature(celsius: 25)
print(temp.fahrenheit) // Output: 77.0


/* Explanation:

- fahrenheit is a computed property, meaning it doesn’t store a value but calculates it dynamically.
- When accessed, it converts the temperature from Celsius to Fahrenheit.

*/
