//
//  Person.swift
//  PersonsList
//
//  Created by Julia Romanenko on 07.05.2022.
//

import Foundation

struct Person {
    let name: String
    let lastname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
    
    static func getPerson() -> [Person] {
        [
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? ""),
            Person(name: names.randomElement() ?? "",
                   lastname: lastnames.randomElement() ?? "",
                   phone: phones.randomElement() ?? "",
                   email: emails.randomElement() ?? "")
        ]
    }
}
