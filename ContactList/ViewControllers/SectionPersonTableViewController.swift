//
//  SectionPersonTableViewController.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class SectionPersonTableViewController: UITableViewController {
    
    let persons = Person.createPersons(count: 10)
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(persons[section].firstName) \(persons[section].lastName)"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.imageView?.image = indexPath.row == 0 ? UIImage(named: "icon_phone_30") : UIImage(named: "icon_mail_30")
        cell.textLabel?.text = indexPath.row == 0 ? persons[indexPath.section].numberPhone : persons[indexPath.section].email

        cell.selectionStyle = .none
        return cell
    }
 

}
