//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Марина Иванова on 28.05.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailAddressLabel: UILabel!
    
    //MARK: - Public properties
    var contact: Person!
    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullname
        phoneNumberLabel.text = "Phone: \(contact.number)"
        emailAddressLabel.text = "Email: \(contact.email)"
    }
}
