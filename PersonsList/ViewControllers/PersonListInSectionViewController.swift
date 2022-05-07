//
//  PersonListInSectionViewController.swift
//  PersonsList
//
//  Created by Julia Romanenko on 07.05.2022.
//

import UIKit

class PersonListInSectionViewController: UITableViewController {
    
    var personsList: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let person = personsList[indexPath.section]
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "envelope")
            content.text = person.email
        }
        
        cell.contentConfiguration = content

        return cell
    }
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
