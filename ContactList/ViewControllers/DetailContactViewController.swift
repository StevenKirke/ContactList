//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Steven Kirke on 08.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class DetailContactViewController: UIViewController {
    
    let style = Styles()
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var personeImage: UIImageView!
    
    @IBOutlet var telephoneLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let person = person else { return }
        
        style.blurImage(image: backgroundImage, view: view, style: .light)
        
        //personeImage.layer.cornerRadius = personeImage.frame.height / 2
        
        title = "\(person.firstName) \(person.lastName)"
        telephoneLabel.text = person.numberPhone
        emailLabel.text = person.email
        personeImage.image = UIImage(named: person.photo)
        
    }
}

