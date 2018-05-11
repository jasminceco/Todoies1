//
//  ViewController.swift
//  Todoies
//
//  Created by Jasmin Ceco on 11/05/2018.
//  Copyright © 2018 Jasmin Ceco. All rights reserved.
//

import UIKit

class TodoListVC: UITableViewController {
    let itemArray = ["Find Mike","Buy Milk", "Buy Mango"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        let cell = tableView.cellForRow(at: indexPath)
        tableView.cellForRow(at: indexPath)?.accessoryType = cell?.accessoryType == .checkmark ? .none : .checkmark
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

}

