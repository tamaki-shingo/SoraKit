//
//  CoursTableViewController.swift
//  SoraKit
//
//  Created by tamaki on 7/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import SoraKit

class CourTableViewController: UITableViewController {
    var dataSource: [Cour]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Sora.cours(success: { (cours) in
            self.dataSource = cours
            self.tableView.reloadData()
        }) { (error) in
            let alert = UIAlertController(title: "Error", message: "Data is not found...", preferredStyle: .alert)
            let action = UIAlertAction(title: "", style: .cancel, handler: { (action) in
                
            })
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let id    = self.dataSource?[indexPath.row].id
        let year  = self.dataSource?[indexPath.row].year
        let cours = self.dataSource?[indexPath.row].cours
        cell.textLabel?.text = "\(id!)/\(year!)/\(cours!)"
        return cell
    }
}
