/* Exercise : Capture List in Closures
Create a closure that captures a variable from its surrounding context.
*/

// Function That Returns a Closure
func makeIncrementer(incrementBy amount: Int) -> () -> Int { // Return Type: () -> Int (a closure that takes no parameters and returns an Int)
    // Declared a Captured Variable. Normally, local variables disappear when a function ends, but closures capture and keep them alive.
    var total = 0
    //Return a Closure. Since the closure captures total, it remembers its state even after makeIncrementer exits.
    return {
        total += amount
        return total
    }
}
// incrementByFive now holds that closure, which retains access to total.
let incrementByFive = makeIncrementer(incrementBy: 5)

// Call the Closure
print(incrementByFive()) // Output: 5
print(incrementByFive()) // Output: 10
print(incrementByFive()) // Output: 15

