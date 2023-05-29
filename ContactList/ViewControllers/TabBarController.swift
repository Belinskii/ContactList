//
//  TabBarController.swift
//  ContactList
//
//  Created by Марина Иванова on 28.05.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    private var contactList = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let topVC = navigationVC.topViewController
                if let personsListVC = topVC as? PersonsListViewController {
                    personsListVC.contactList = contactList
                }
                if let secondListVC = topVC as? SecondPersonsListViewController {
                    secondListVC.contactList = contactList
                }
            }
        }
    }
}
