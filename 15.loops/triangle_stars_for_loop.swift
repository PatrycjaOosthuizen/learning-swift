 // Exercise : Print a Triangle of Stars.
 // Write a function that prints a triangle pattern of * stars up to a given height.

 func printTriangle(height: Int) {
    for i in 1...height {
        let line = String(repeating: "*", count: i)
        print(line)
    }
}

printTriangle(height: 5)

