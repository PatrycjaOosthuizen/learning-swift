/*
Exercise : Bank Account with Balance
Create a struct BankAccount that stores balance, and a computed property isOverdrawn that returns true if the balance is negative.
*/

struct BankAccount {
    var balance: Double
    
    var isOverdrawn: Bool {
        return balance < 0
    }
}

// Example Usage
let account = BankAccount(balance: -50)
print(account.isOverdrawn) // Output: true



/*
📌 Key Takeaways on Computed Properties
- Computed properties do not store values; they calculate them dynamically.
- No set method is needed unless you also want to allow modifying the property.
- Can be written in a long version (with return) or a shorter version (implicit return).
- Computed properties are useful for converting values, calculating data dynamically, and formatting strings.
*/