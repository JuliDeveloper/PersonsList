//
//  PrepareViewController.swift
//  PersonsList
//
//  Created by Julia Romanenko on 07.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let personsList = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        getViewController()
    }
    
    private func getViewController() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let listVC = navigationVC.topViewController as? PersonsListViewController {
                    listVC.personsList = personsList
                } else if let listInSectionsVC = navigationVC.topViewController as? PersonListInSectionViewController {
                    listInSectionsVC.personsList = personsList
                }
            }
        }
    }
}
