/*
Exercise 3: Communication Between Two ViewControllers
Create a delegate-based communication system where SecondViewController sends data back to FirstViewController.

Steps:
1. Define a DataPassingDelegate protocol with didReceiveData(_ data: String).
2. Implement SecondViewController, which has a delegate property and a sendDataBack() method.
3. Implement FirstViewController, conforming to DataPassingDelegate, updating a label when data is received.
4. In SecondViewController, call didReceiveData() before dismissing.
*/ 
import UIKit

// 1. Define the delegate protocol
protocol DataPassingDelegate: AnyObject {
    func didReceiveData(_ data: String)
}

// 2. Implement the SecondViewController
class SecondViewController: UIViewController {
    weak var delegate: DataPassingDelegate?

    func sendDataBack() {
        let data = "Hello from SecondViewController!"
        delegate?.didReceiveData(data)
        dismiss(animated: true, completion: nil) // Dismiss the view
    }
}

// 3. Implement FirstViewController
class FirstViewController: UIViewController, DataPassingDelegate {
    func didReceiveData(_ data: String) {
        print("FirstViewController received data: \(data)")
    }

    func openSecondViewController() {
        let secondVC = SecondViewController()
        secondVC.delegate = self // Assign delegate before presenting
        present(secondVC, animated: true)
    }
}

// 4. Simulate presenting SecondViewController
let firstVC = FirstViewController()
firstVC.openSecondViewController()



/*
✅ Explanation:
- DataPassingDelegate is defined for passing data.
- SecondViewController has a delegate property and a method sendDataBack(), which calls delegate?.didReceiveData().
- FirstViewController adopts DataPassingDelegate and implements didReceiveData(_:), printing the received data.
- Before presenting SecondViewController, firstVC assigns itself as the delegate.
- When sendDataBack() is called, FirstViewController receives and handles the data.

✅ Key Takeaways About the Delegate Pattern
- Separation of Concerns: The delegate pattern allows objects to communicate without being tightly coupled.
- Weak Reference: The delegate property is usually marked weak to avoid retain cycles.
- Flexible & Scalable: Helps create modular and reusable code, commonly used in UI components (e.g., UITableViewDelegate).

*/