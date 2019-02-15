//
//  ViewController.swift
//  shoppingList
//
//  Created by Grace Paulette on 2/12/19.
//  Copyright © 2019 John Hersey HIgh School. All rights reserved.
//
// Rebecca Rocks
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newItemTextField: UITextField!
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        var item1 = Item(name: "Milk", quantity: 1)
        var item2 = Item(name: "Eggs", quantity: 12)
        items = [item1, item2]
        let item3 = Item(name: "Bread", quantity: 2)
        items.append(item3)
    }
    
    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
        if let newItemName = newItemTextField.text, newItemName != "" {
            let newItem = Item(name: newItemName, quantity: 1)
            items.append(newItem)
            tableView.reloadData()
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
        let currentItemName = items[ indexPath.row].name
        let currentItemQuantity = items[indexPath.row].quantity
        cell.textLabel?.text = currentItemName
        cell.detailTextLabel?.text = "quantity: \(currentItemQuantity)"
        return cell
    } else {
    
    return UITableViewCell()
    }
}

}
