/*
 Creating a Circular Button Using a UIButton Extension
 In this exercise, you will extend the UIButton class by adding a custom method that makes any button circular.

 Steps to Follow:
 1️⃣ Create an extension for UIButton.
 2️⃣ Inside the extension, define a method called makeCircular().
 3️⃣ In the method:
    - Set clipsToBounds to true to ensure the button respects its shape.
    - Adjust cornerRadius so that it becomes half of the button's width, making it a perfect circle.
 4️⃣ Create a UIButton with a specific frame size (e.g., 50x50).
 5️⃣ Set a background color for visibility (e.g., .blue).
 6️⃣ Call the makeCircular() method on the button to apply the circular shape.
 
 */

import UIKit

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}



let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height:50))

button.backgroundColor = .blue
button.makeCircular()


//button.layer.cornerRadius = 25
//button.clipsToBounds = true

