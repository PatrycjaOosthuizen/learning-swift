/* 
Shopping Cart 🛒
Use of Arrays: Storing items in the cart
How It Works:
- Use an array to hold items added to the cart.
- Calculate the total price using array operations.
- Remove items if the user deletes them.
*/

import Foundation  // Import Foundation for basic Swift functionality

// Shopping Cart - An array of dictionaries to store items in the cart
var cart: [[String: Any]] = [
    ["name": "Apple", "price": 1.50, "quantity": 3],  // Each dictionary represents an item
    ["name": "Milk", "price": 2.00, "quantity": 1]    // "name" is a String, "price" is Double, "quantity" is Int
]

// Function to Display the Shopping Cart
func showCart() {
    print("\n🛒 Shopping Cart:")  // Print the cart title

    if cart.isEmpty {
        print("Your cart is empty!")  // If the cart is empty, display a message
    } else {
        // Loop through each item in the cart
        for item in cart {
            if let name = item["name"] as? String,  // Safely unwrap name
               let price = item["price"] as? Double, // Safely unwrap price
               let quantity = item["quantity"] as? Int { // Safely unwrap quantity
                // Print item details
                print("\(name) - $\(price) x \(quantity) = $\(price * Double(quantity))")
            }
        }
    }
}

// Function to Add an Item to the Cart
func addItem(name: String, price: Double, quantity: Int) {
    let newItem: [String: Any] = ["name": name, "price": price, "quantity": quantity] // Create new item dictionary
    cart.append(newItem) // Add item to the cart array
    print("✅ Added \(quantity) \(name)(s) to your cart.") // Print confirmation
}

// Function to Remove an Item from the Cart by Name
func removeItem(name: String) {
    // Find the index of the item to be removed
    if let index = cart.firstIndex(where: { $0["name"] as? String == name }) {
        let removedItem = cart.remove(at: index) // Remove item at found index
        print("❌ Removed \(removedItem["name"] ?? "") from your cart.") // Print confirmation
    } else {
        print("⚠️ Item not found!") // Show message if item does not exist
    }
}

// Function to Calculate the Total Price of Items in the Cart
func getTotal() -> Double {
    var total: Double = 0  // Start total from 0
    
    // Loop through all items in the cart
    for item in cart {
        if let price = item["price"] as? Double, // Safely unwrap price
           let quantity = item["quantity"] as? Int { // Safely unwrap quantity
            total += price * Double(quantity) // Multiply price by quantity and add to total
        }
    }
    return total // Return the final total price
}

// ✅ Test the Shopping Cart

showCart()  // Display initial cart

addItem(name: "Bread", price: 1.80, quantity: 2) // Add Bread to the cart
showCart()  // Display updated cart

removeItem(name: "Apple") // Remove Apple from the cart
showCart()  // Display updated cart

print("💰 Total Price: $\(getTotal())")  // Display the total price of the cart
