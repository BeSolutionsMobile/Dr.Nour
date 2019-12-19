//
//  AboutDrNourViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class AboutDrNourViewController: UIViewController {

    @IBOutlet var bigView: UIView!
    @IBOutlet weak var lineWidth: NSLayoutConstraint!
    @IBOutlet weak var drImageProfile: UIImageView!
    @IBOutlet weak var aboutView: UIView!{
        didSet{
           aboutView.layer.cornerRadius = 25
           aboutView.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewDesign()

        // Do any additional setup after loading the view.
    }
    
    func updateViewDesign() {
        
        CustomDesign.customCircleImage(image: drImageProfile)
        lineWidth.constant = bigView.frame.width/2
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
