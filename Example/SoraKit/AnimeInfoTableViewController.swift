//
//  YearPeriodTableViewController.swift
//  SoraKit
//
//  Created by tamaki on 7/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import SoraKit

class AnimeInfoTableViewController: UITableViewController {

    var targetYear: Int?
    var targetSeason: SoraSeason?
    
    private var dataSource: [AnimeInfo]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let year = targetYear, let season = targetSeason {
            Sora.animeInfo(OfYear: year, season: season, success: { (animeInfoList) in
                self.dataSource = animeInfoList
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
        cell.detailTextLabel?.text = "#" + (dataSource?[indexPath.row].twitter_hash_tag)!
        return cell
    }
}
