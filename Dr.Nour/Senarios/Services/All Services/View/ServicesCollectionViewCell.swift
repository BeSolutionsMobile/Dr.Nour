//
//  ServicesCollectionViewCell.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class ServicesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var servicesImage: UIImageView!{
        didSet{
            servicesImage.layer.cornerRadius = servicesImage.frame.size.height/2
            //servicesImage.layer.borderWidth = 1
            servicesImage.clipsToBounds = true
            
        }
    }
    @IBOutlet weak var servicesNmaeLbl: UILabel!
    
    @IBOutlet weak var line1: UIView!    
    @IBOutlet weak var line2: UIView!
}
