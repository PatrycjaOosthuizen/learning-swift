/*
Exercise 1: Basic Delegate Implementation
Create a simple delegate pattern where a Teacher assigns homework, and a Student completes it. Once the homework is done, the student notifies the teacher.

Steps:
1. Create a HomeworkDelegate protocol with a method didFinishHomework().
2. Implement a Teacher class that adopts HomeworkDelegate and prints a message when homework is done.
3. Create a Student class with a weak delegate property of type HomeworkDelegate?.
4. Simulate the student completing homework and notifying the teacher.
*/

import Foundation

// 1. Define the delegate protocol
protocol HomeworkDelegate: AnyObject {
    func didFinishHomework()
}

// 2. Implement the Teacher class which acts as the delegate
class Teacher: HomeworkDelegate {
    func didFinishHomework() {
        print("Teacher: Great job! You finished your homework.")
    }
}

// 3. Implement the Student class with a delegate property
class Student {
    weak var delegate: HomeworkDelegate?  // Prevent retain cycle. A retain cycle happens when two objects hold onto each other so tightly that they can never be removed from memory. This creates a memory leak, which means your app uses up memory unnecessarily and never frees it.
    
    func doHomework() {
        print("Student: I'm doing my homework...")
        sleep(2) // Simulating work
        print("Student: I finished my homework!")
        delegate?.didFinishHomework() // Notify the delegate
    }
}

// 4. Instantiate and set up the delegate relationship
let teacher = Teacher()
let student = Student()
student.delegate = teacher // Assign teacher as the delegate

// 5. Simulate student doing homework
student.doHomework()
