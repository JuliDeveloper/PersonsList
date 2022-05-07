//
//  Person.swift
//  PersonsList
//
//  Created by Julia Romanenko on 07.05.2022.
//

import Foundation

let dataPerson = DataManager()

struct Person {
    let name: String
    let lastname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    static func getPerson() -> [Person] {

        var persons: [Person] = []
        
        let count = min(dataPerson.names.count, dataPerson.lastnames.count, dataPerson.phones.count, dataPerson.emails.count)

        for _ in 0..<count {
            let name = dataPerson.names.randomElement() ?? ""
            let lastname = dataPerson.lastnames.randomElement() ?? ""
            let phone = dataPerson.phones.randomElement() ?? ""
            let email = dataPerson.emails.randomElement() ?? ""

            persons.append(Person(name: name, lastname: lastname, phone: phone, email: email))
        }

        return persons
    }
}

