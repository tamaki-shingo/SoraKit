//
//  SoraFeaturesViewControllerTableViewController.swift
//  SoraKit
//
//  Created by tamaki on 7/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import SoraKit

class SoraFeaturesTableViewController: UITableViewController {

    private var targetYear: Int?
    private var targetSeason: SoraSeason?
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Cours"
        case 1:
            cell.textLabel?.text = "Anime Titles of Year"
        case 2:
            cell.textLabel?.text = "Anime info of Year/Season"
        default:
            return UITableViewCell()
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "cours", sender: self)
            break
        case 1:
            let alert = UIAlertController(title: "Please input Year", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { [weak alert] action in
                if let year = alert?.textFields?.first?.text {
                    self.targetYear = Int(year)
                }
                self.performSegue(withIdentifier: "titles", sender: self)
            })
            alert.addAction(action)
            alert.addTextField(configurationHandler: { textField in
                textField.placeholder = "2017"
            })
            self.present(alert, animated: true, completion: nil)
        case 2:
            let alert = UIAlertController(title: "Please input Year", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                if let year = alert.textFields?.first?.text {
                    self.targetYear = Int(year)
                }

                let seasonSelectionAlert = UIAlertController(title: "Select Season", message: "Please select season", preferredStyle: .actionSheet)
                let winter = UIAlertAction(title: "Winter", style: .default, handler: { (action) in
                    self.targetSeason = .winter
                    self.performSegue(withIdentifier: "info", sender: self)
                })
                let spring = UIAlertAction(title: "Spring", style: .default, handler: { (action) in
                    self.targetSeason = .sprint
                    self.performSegue(withIdentifier: "info", sender: self)
                })
                let summer = UIAlertAction(title: "Summer", style: .default, handler: { (action) in
                    self.targetSeason = .summer
                    self.performSegue(withIdentifier: "info", sender: self)
                })
                let autumm = UIAlertAction(title: "Autumn", style: .default, handler: { (action) in
                    self.targetSeason = .autumn
                    self.performSegue(withIdentifier: "info", sender: self)
                })
                seasonSelectionAlert.addAction(winter)
                seasonSelectionAlert.addAction(spring)
                seasonSelectionAlert.addAction(summer)
                seasonSelectionAlert.addAction(autumm)
                self.present(seasonSelectionAlert, animated: true, completion: nil)
            })
            alert.addAction(action)
            alert.addTextField(configurationHandler: { textField in
                textField.placeholder = "2017"
            })
            self.present(alert, animated: true, completion: nil)
        default:
            break
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
        case let titlesTableVC as AnimeTitleTableViewController:
            titlesTableVC.targetYear = targetYear
        case let infoTableVC as AnimeInfoTableViewController:
            infoTableVC.targetYear = targetYear
            infoTableVC.targetSeason = targetSeason
        default:
            break
        }
    }

}
