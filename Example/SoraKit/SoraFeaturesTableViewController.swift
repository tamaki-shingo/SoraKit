//
//  SoraFeaturesViewControllerTableViewController.swift
//  SoraKit
//
//  Created by tamaki on 7/3/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class SoraFeaturesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

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
            cell.textLabel?.text = "Year Info"
        case 2:
            cell.textLabel?.text = "Year/Period Info"
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
            let alert = UIAlertController(title: "Please input year", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "cours", sender: self)
            })
            alert.addAction(action)
            alert.addTextField(configurationHandler: { textField in
                textField.placeholder = "2017"
            })
            self.present(alert, animated: true, completion: nil)
        case 2:
            let alert = UIAlertController(title: "Please input year", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                let periodAlert = UIAlertController(title: "Select Period", message: "Please select period", preferredStyle: .actionSheet)
                let winter = UIAlertAction(title: "Winter", style: .default, handler: { (action) in
                    self.performSegue(withIdentifier: "cours", sender: self)
                })
                let spring = UIAlertAction(title: "Spring", style: .default, handler: { (action) in
                    self.performSegue(withIdentifier: "cours", sender: self)
                })
                let summer = UIAlertAction(title: "Summer", style: .default, handler: { (action) in
                    self.performSegue(withIdentifier: "cours", sender: self)
                })
                let autumm = UIAlertAction(title: "Autumm", style: .default, handler: { (action) in
                    self.performSegue(withIdentifier: "cours", sender: self)
                })
                periodAlert.addAction(winter)
                periodAlert.addAction(spring)
                periodAlert.addAction(summer)
                periodAlert.addAction(autumm)
                self.present(periodAlert, animated: true, completion: nil)
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
        
    }

}
