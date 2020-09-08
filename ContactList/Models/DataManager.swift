//
//  DataManager.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit


class DataManagers {
    
    var firstNames = ["Israel","Boris","Francisco",
                      "Aurelio","Alexander","Milton",
                      "Arla","Tammera","Georgine",
                      "Julieta"]
    
    var lastNames = ["Ditty","Grandberry","Spagnuolo",
                     "Hilyard","Bohnert","Salas","Plath",
                     "Scotti","Brandow","Thibodaux"]
    
    var numbers = ["(468) 877-2042","(665) 636-7616","(429) 418-1009",
                   "(828) 263-6166","(912) 513-6114","(957) 486-6178",
                   "(628) 745-0252","(595) 977-7640","(258) 519-7485",
                   "(969) 724-1464"]
    
    var emails = ["Ditty@hotmail.com","Grandberry@me.com",
                  "Spagnuolo@optonline.net","Hilyard@comcast.net",
                  "Bohnert@sbcglobal.net","Salas@comcast.net",
                  "Plath@verizon.net","Scotti@yahoo.com",
                  "Brandow@outlook.com","Thibodaux@optonline.net"]
    
//    var usedName = Set<String>()
//    var usedLastName = Set<String>()
//    var usedNumber = Set<String>()
//    var usedEmail = Set<String>()
    
    enum DataType {
        case name, lastNane, number, email
    }
    
    func getRandom(by type: DataType) -> String {
        switch type {
        case .name:
            if firstNames.count > 0 {
                let index = Int.random(in: 0..<firstNames.count)
                let name = firstNames[index]
                firstNames.remove(at: index)
                return name
            }
        case .lastNane:
            if lastNames.count > 0 {
                let index = Int.random(in: 0..<lastNames.count)
                let name = lastNames[index]
                lastNames.remove(at: index)
                return name
            }
        case .number:
            if numbers.count > 0 {
                let index = Int.random(in: 0..<numbers.count)
                let name = numbers[index]
                numbers.remove(at: index)
                return name
            }
        case .email:
            if emails.count > 0 {
                let index = Int.random(in: 0..<emails.count)
                let name = emails[index]
                emails.remove(at: index)
                return name
            }
        }
        return ""
    }
}


struct Person {
    var firstName: String
    var lastName: String
    var numberPhone: String
    var email: String
    
    
    static func createPersons(count: Int) -> [Person] {
        var persons = [Person]()
        let dataManager = DataManagers()
        for _ in 0..<count {
            let person = Person(firstName: dataManager.getRandom(by: .name),
                                lastName: dataManager.getRandom(by: .lastNane),
                                numberPhone: dataManager.getRandom(by: .number),
                                email: dataManager.getRandom(by: .email))
            persons.append(person)
        }
        return persons
    }

}






