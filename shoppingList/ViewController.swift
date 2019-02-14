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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
    }

    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
}
}
