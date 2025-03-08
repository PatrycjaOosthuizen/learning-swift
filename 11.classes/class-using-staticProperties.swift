/* 
Exercise : Using Static Properties
Task:
Create a class BankAccount with:

A property balance: Double
A method deposit(amount: Double)
A method withdraw(amount: Double)
A static property bankName = "Swift Bank"
*/
class BankAccount {
    var balance: Double
    static let bankName = "Swift Bank" // Static property

    init(balance: Double) {
        self.balance = balance
    }

    func deposit(amount: Double) {
        balance += amount
    }

    func withdraw(amount: Double) {
        if amount <= balance {
            balance -= amount
        } else {
            print("Insufficient balance")
        }
    }
}

// Testing the class
let account = BankAccount(balance: 1000)
account.deposit(amount: 500)
print(BankAccount.bankName) // Output: Swift Bank


/* 
 Explanation
- bankName is a static property, meaning it belongs to the class itself, not instances.
- deposit() and withdraw() modify balance.
*/