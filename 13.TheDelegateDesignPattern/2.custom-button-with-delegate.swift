/* 
Exercise 2: Custom Button with Delegate
Create a custom button class that notifies a delegate when it is tapped.

Steps:
1. Define a ButtonDelegate protocol with buttonWasTapped().
2. Implement a CustomButton class with a delegate property and a tap() method that triggers the delegate.
3. Create a ViewController class that adopts ButtonDelegate and prints a message when tapped.
4. Assign the delegate and call tap().
*/

import Foundation

// 1. Define the delegate protocol
protocol ButtonDelegate: AnyObject {
    func buttonWasTapped()
}

// 2. Implement the CustomButton class
class CustomButton {
    weak var delegate: ButtonDelegate?

    func tap() {
        print("Button was tapped!")
        delegate?.buttonWasTapped() // Notify the delegate
    }
}

// 3. Implement a ViewController that acts as the delegate
class ViewController: ButtonDelegate {
    func buttonWasTapped() {
        print("ViewController: The button was tapped, performing an action.")
    }
}

// 4. Instantiate and set up the delegate relationship
let button = CustomButton()
let viewController = ViewController()
button.delegate = viewController // Assign ViewController as delegate

// 5. Simulate a button tap
button.tap()

