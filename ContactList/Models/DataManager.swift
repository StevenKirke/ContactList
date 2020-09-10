//
//  DataManager.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit


class DataManagers {
    
    var firstNames = ["Alexandra","Filiberto","Arla",
                      "Boris","Francisco","Georgin",
                      "Israela","Julieta","Milton",
                      "Tammera"]
    
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
    
    var photos = ["Alexandra","Filiberto","Arla",
                  "Boris","Francisco","Georgin",
                  "Israela","Julieta","Milton",
                  "Tammera"]
    
    enum DataType {
        case name, lastNane, number
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
        }
        return ""
    }
}


struct Person {
    let firstName: String
    let lastName: String
    let numberPhone: String
    let email: String
    let photo: String
    
    
    static func createPersons() -> [Person] {
        var persons = [Person]()
        let dataManager = DataManagers()
        let countLastName = dataManager.lastNames.count
        
        let firstNames = dataManager.firstNames.shuffled()
        let lastNames = dataManager.lastNames.shuffled()
        let numbers = dataManager.numbers.shuffled()
        
        for index in 0..<countLastName {
            
            let firstName = firstNames[index]
            let secondName = lastNames[index]
            let number = numbers[index]
            
//            let email = dataManager.emails.first { (email) -> Bool in
//                if let cropEmail = email.components(separatedBy: "@").first,
//                    cropEmail == secondName {
//                    return true
//                }
//                return false
//            }
            
            let email = dataManager.emails.first {
                $0.components(separatedBy: "@").first == secondName
            } ?? ""
            
//
//            if let index = dataManager.photos.firstIndex(where: { $0 == person.firstName }) {
//                person.photo = dataManager.photos[index]firstName
//            }
//
            let person = Person(firstName: firstName, lastName: secondName, numberPhone: number, email: email, photo: firstName)
            
            persons.append(person)
        }
        return persons
    }

}






