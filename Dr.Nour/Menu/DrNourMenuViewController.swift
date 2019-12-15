//
//  DrNourMenuViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class DrNourMenuViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
        /*{
        didSet{
            Rounded.roundedImage(imageView: profileImage)
            profileImage.sd_setImage(with: URL(string: ""), placeholderImage: UIImage(named: "userPlaceholder"))
        }
    }
 */
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var bigViewOfScroll: UIView!{
        didSet{
           bigViewOfScroll.layer.cornerRadius = 25
           bigViewOfScroll.clipsToBounds = true
           bigViewOfScroll.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMaxXMaxYCorner  ]
        }
    }
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var firstSideMenu: UIView!{
        didSet{
            firstSideMenu.layer.cornerRadius = 25
            firstSideMenu.clipsToBounds = true
            firstSideMenu.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner  ]
        }
    }
    @IBOutlet weak var secondSideMenu: UIView!{
        didSet{
           secondSideMenu.layer.cornerRadius = 25
           secondSideMenu.clipsToBounds = true
           secondSideMenu.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner  ]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}
