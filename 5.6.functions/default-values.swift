/* ✏️ Exercise : Create a Method with Default Values

In Swift, you can assign a default value to parameters so that the caller can skip them if they want.

👉 Syntax:

func methodName(parameterName: Type = DefaultValue) {
    // your code
}

✅ If caller provides a value → use it.

✅ If caller doesn't provide → use default value.

Task:
Create a method that describes a car.

- Parameter brand (String) — required
- Parameter color (String) — default value should be "Black"

It should print:

- This is a Black Tesla.

or if a different color is provided:

- This is a Red Tesla.
*/

struct CarDescriber {
    
    // Method with a default parameter value
    func describeCar(brand: String, color: String = "Black") {
        print("This is a \(color) \(brand).")
    }
}

// Create an instance
let describer = CarDescriber()

// Call with only brand (color uses default)
describer.describeCar(brand: "Tesla")

// Call with both brand and color
describer.describeCar(brand: "Tesla", color: "Red")

// ✅ When you call:
describer.describeCar(brand: "Tesla") //→ prints Black Tesla

// ✅ When you call:
describer.describeCar(brand: "Tesla", color: "Red") //→ prints Red Tesla