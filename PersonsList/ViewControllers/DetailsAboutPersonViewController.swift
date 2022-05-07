//
//  DetailsAboutPersonViewController.swift
//  PersonsList
//
//  Created by Julia Romanenko on 07.05.2022.
//

import UIKit

class DetailsAboutPersonViewController: UIViewController {

    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.backButtonTitle = "Back"
        
        title = person.fullName
        
        phoneLable.text = person.phone
        emailLable.text = person.email

    }


}
