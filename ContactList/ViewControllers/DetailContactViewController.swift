//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class DetailContactViewController: UIViewController {
    
    @IBOutlet var personeImage: UIImageView!
    
    @IBOutlet var telephoneLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    var phone: String!
    var email: String!
    var photo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personeImage.layer.cornerRadius = personeImage.bounds.height / 2
        
        telephoneLabel.text = phone
        emailLabel.text = email
        personeImage.image = UIImage(named: photo)
        
        
    }


}

