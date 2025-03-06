/* 
Creating a Simple Class
Task:
Create a class called Car with the following properties and methods:
 - brand: String
 - year: Int
 - speed: Double (default value: 0.0)
 - A method drive() that increases speed by 10
 - A method brake() that decreases speed by 10 (but not below 0)
 - A method displayInfo() that prints the car's brand, year, and current speed
*/
class Car {
    var brand: String
    var year: Int
    var speed: Double = 0.0  // Default speed

    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }

    func drive() {
        speed += 10
    }

    func brake() {
        speed = max(0, speed - 10)  // Prevents negative speed
    }

    func displayInfo() {
        print("Brand: \(brand), Year: \(year), Speed: \(speed) km/h")
    }
}

// Testing the class
let myCar = Car(brand: "Toyota", year: 2020)
myCar.drive()
myCar.displayInfo() // Output: Brand: Toyota, Year: 2020, Speed: 10.0 km/h

/*
Explanation
- Properties: brand, year, speed
- Methods: drive(), brake(), displayInfo()
- Initializer (init): Assigns values to brand and year
*/