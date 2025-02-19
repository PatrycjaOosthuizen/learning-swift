/* 
To-Do List App 📝
Use of Arrays: Storing tasks and managing them
How It Works:
- Create an array to hold the list of tasks.
- Use functions to add, remove, and display tasks.
- Update the UI when tasks are changed.
*/

import Foundation

// 1️ Create an array to store tasks
var tasks: [String] = ["Buy groceries", "Walk the dog", "Finish homework"]

// 2️ Function to display all tasks
func showTasks() {
    print("\n📋 To-Do List:")
    if tasks.isEmpty {
        print("✅ No tasks! Enjoy your day! 🌞")
    } else {
        for (index, task) in tasks.enumerated() {
            print("\(index): \(task)")
        }
    }
}

// 3️ Function to add a new task
func addTask(_ newTask: String) {
    tasks.append(newTask)
    print("✅ Added: '\(newTask)' to your To-Do List!")
}

// 4️ Function to remove a task by index
func removeTask(at index: Int) {
    if index >= 0 && index < tasks.count {  // ✅ Check if index is valid
        let removedTask = tasks.remove(at: index)
        print("❌ Removed: '\(removedTask)' from your list.")
    } else {
        print("⚠️ Invalid task number! Please try again.")
    }
}

// 5️ Function to mark a task as done
func completeTask(at index: Int) {
    if index >= 0 && index < tasks.count {
        print("🎉 Task Completed: '\(tasks[index])' ✅")
        tasks.remove(at: index)  // Remove after completion
    } else {
        print("⚠️ Invalid task number! Please try again.")
    }
}

// ✅ Test the To-Do List:
showTasks()  // Show current tasks

addTask("Read a book")  // Add a new task
showTasks()  // Show updated list

removeTask(at: 1)  // Remove task at index 1
showTasks()  // Show updated list

completeTask(at: 0)  // Mark first task as completed
showTasks()  // Show final list
