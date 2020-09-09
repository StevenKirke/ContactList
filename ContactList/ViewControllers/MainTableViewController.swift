//
//  MainTableViewController.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let persons = Person.createPersons()
    
    override func viewDidLoad() {
    }

    // MARK: - Table view data source


    override func numberOfSections(in tableView: UITableView) -> Int {
         1
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableCell
                
        cell.nameLabel?.text = "\(persons[indexPath.row].firstName) \(persons[indexPath.row].lastName)"
        
        cell.photoImage?.image = UIImage(named: persons[indexPath.row].photo)
        
        cell.photoImage?.layer.cornerRadius = (cell.photoImage?.layer.bounds.size.width)! / 2

        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listSegue" {
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
