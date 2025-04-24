//
//  ViewController.swift
//  ToDoApp-iOS15
//
//  Created by PatrycjaOosthuizen on 23/04/2025.
//

import UIKit

class TodoListViewController: UITableViewController {
    
   var itemArray = ["Buy milk", "Learn Swift", "Go for a walk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TodoItemCell")
        
    }
    
    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
}
