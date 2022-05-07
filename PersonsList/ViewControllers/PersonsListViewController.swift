//
//  PesonsListViewController.swift
//  PersonsList
//
//  Created by Julia Romanenko on 07.05.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var personsList: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 50

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellForPerson", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let person = personsList[indexPath.row]
            
        content.text = person.fullName
        
        cell.contentConfiguration = content
        

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsList[indexPath.row]
        
        guard let detailsVC = segue.destination as? DetailsAboutPersonViewController else { return }
        detailsVC.person = person
    }

}
