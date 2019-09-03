//
//  ContinentTableViewController.swift
//  Lab2.1
//
//  Created by Ilari Marjamaa on 03/09/2019.
//  Copyright © 2019 Ilari Marjamaa. All rights reserved.
//

import UIKit

class ContinentTableViewController: UITableViewController {
    
    let continents = [("Africa", Int64(1216130000)),
                      ("Australia", Int64(38304000)),
                      ("Antarctica", Int64(00)),
                      ("North America", Int64(579024000)),
                      ("South Amercia", Int64(422535000)),
                      ("Asia", Int64(4581757408)),
                      ("Europe", Int64(738849000)),]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: self.continents[indexPath.row].0, message: "Population of " + self.continents[indexPath.row].0 + " is " + String(self.continents[indexPath.row].1), preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Woah, that's a lot of people", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return continents.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = self.continents[indexPath.row].0

        return cell
    }
}
