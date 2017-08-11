//
//  YearTableViewController.swift
//  SoraKit
//
//  Created by tamaki on 7/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import SoraKit

class AnimeTitleTableViewController: UITableViewController {
    var targetYear: Int?
    private var dataSource: [AnimeTitle]?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let year = targetYear {
            Sora.animeTitles(OfYear: year, success: { (titles) in
                self.dataSource = titles
                self.tableView.reloadData()
            }, failure: { (error) in
                print(error)
            })
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

        cell.textLabel?.text = dataSource?[indexPath.row].title
        
        return cell
    }
}
