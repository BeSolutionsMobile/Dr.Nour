//
//  MyBalalnceViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class MyBalalnceViewController: UIViewController {
    @IBOutlet weak var headerView: UIView!{
        didSet{
           headerView.layer.cornerRadius = 25
           headerView.clipsToBounds = true
           headerView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner  ]
        }
    }
    @IBOutlet weak var lastSectionView: UIView!{
        didSet{
           lastSectionView.layer.cornerRadius = 25
           lastSectionView.clipsToBounds = true
           lastSectionView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner  ]
        }
    }
    @IBOutlet weak var moneyTotalEarned: UILabel!
    @IBOutlet weak var moneyYourBookings: UILabel!
    
    @IBOutlet weak var moneyYourBalance: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewDesign()
        
        // Do any additional setup after loading the view.
    }
    func updateViewDesign() {
        
        CustomDesign.criclLableDesign(lable: moneyTotalEarned)
        CustomDesign.criclLableDesign(lable: moneyYourBookings)
        CustomDesign.criclLableDesign(lable: moneyYourBalance)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
