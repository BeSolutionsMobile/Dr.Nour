//
//  GalleryCollectionViewCell.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var galleryImage: UIImageView!
  
    @IBOutlet weak var criclePoint: UIView!{
        didSet{
            criclePoint.layer.cornerRadius = criclePoint.frame.size.height/2
           
            
        }
    }
    @IBOutlet weak var galleryNameLbl: UILabel!
    
}
