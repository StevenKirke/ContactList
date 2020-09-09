//
//  SectionPersonTableViewController.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class SectionPersonTableViewController: UITableViewController {
    
    let persons = Person.createPersons()
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
         persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         "\(persons[section].firstName) \(persons[section].lastName)"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.imageView?.image = indexPath.row == 0 ?
            UIImage(named: "icon_phone_30") : UIImage(named: "icon_mail_30")
        
        cell.textLabel?.text = indexPath.row == 0 ?
            persons[indexPath.section].numberPhone : persons[indexPath.section].email

        cell.selectionStyle = .none
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sectionSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let dvc = segue.destination as! DetailContactViewController
                
                dvc.title = "\(persons[indexPath.row].firstName) \(persons[indexPath.row].lastName)"
                
                dvc.phone = persons[indexPath.row].numberPhone
                
                dvc.email = persons[indexPath.row].email
                
                dvc.photo = persons[indexPath.row].photo
                
            }
        }
    }
 

}
