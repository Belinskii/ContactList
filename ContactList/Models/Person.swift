//
//  Person.swift
//  ContactList
//
//  Created by Марина Иванова on 26.05.2023.
//

import Foundation

struct Person {
    var name: String
    let surname: String
    let number: String
    let email: String
    let fullname: String
    
    static func getPerson(index: Int) -> Person {
        Person(name: "\(shufledNames[index])", surname: "\(shufledSurnames[index])", number: "\(shufledNumbers[index])", email: "\(shufledEmails[index])", fullname: "\(shufledNames[index]) \(shufledSurnames[index])")
    }
    
    static func getContactList() -> [Person] {
        var contactList: [Person] = []
        for i in 0..<shufledNames.count {
            contactList.append(getPerson(index: i))
        }
        return contactList
    }
}

let shufledNames = DataStore.shared.names.shuffled()
let shufledSurnames = DataStore.shared.surnames.shuffled()
let shufledNumbers = DataStore.shared.numbers.shuffled()
let shufledEmails = DataStore.shared.emails.shuffled()





