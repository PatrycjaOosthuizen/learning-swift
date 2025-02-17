/* 
Login System (Username & Password Check)
Exercise:
Write a function login that takes a username and password.

If both match "admin" and "1234", print "Login successful!"
Otherwise, print "Invalid credentials."
*/

func login(username: String, password: String) {
    if username == "admin" && password == "1234" {
        print("Login successful!")
    } else {
        print("Invalid credentials.")
    }
}

// Example usage:
login(username: "admin", password: "1234")  // Output: Login successful!
login(username: "user", password: "pass")   // Output: Invalid credentials.