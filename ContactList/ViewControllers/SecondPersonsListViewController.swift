//
//  SecondPersonalListViewControllerTableViewController.swift
//  ContactList
//
//  Created by Марина Иванова on 28.05.2023.
//

import UIKit

final class SecondPersonsListViewController: UITableViewController {
    
    //MARK: - Public properties
    var contactList: [Person]!
}

// MARK: - UITableViewDataSource
extension SecondPersonsListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "number", for: indexPath)
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.number
            content.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullname
    }
}
