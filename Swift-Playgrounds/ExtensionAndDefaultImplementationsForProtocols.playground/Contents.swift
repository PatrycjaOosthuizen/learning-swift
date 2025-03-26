/*
 Exercise:
 Write an extension for the Double type in Swift that adds a method to round any Double number to a given number of decimal places.

 Instructions:
 - Create an extension of Double.
 -  Inside the extension, define a method called round(to:).
 - The method should take one parameter:

 places (an Int) → the number of decimal places to round to.
  - Use multiplication and division to shift the decimal and round the number.
 - Return the rounded number.
 */

import UIKit

extension Double {
    func round(to places: Int)-> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}
var myDouble = 3.1415926535

myDouble.round(to: 3)


