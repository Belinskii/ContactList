//
//  PersonalListViewController.swift
//  ContactList
//
//  Created by Марина Иванова on 26.05.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    private var contactList = Person.getContactList()

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        detailsVC.contact = contactList[indexPath.row]
        
    }
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullname
        cell.contentConfiguration = content
        
        return cell
    }
}
