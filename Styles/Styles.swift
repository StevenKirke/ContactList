//
//  Styles.swift
//  ContactList
//
//  Created by Steven Kirke on 10.09.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class Styles {
    
    func blurImage(image: UIImageView, view: UIView, style: UIBlurEffect.Style) {
        let blurView = UIVisualEffectView(effect: UIBlurEffect(style: style))
        blurView.frame = view.frame
        image.addSubview(blurView)
    }
}
