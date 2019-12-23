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
    @IBOutlet weak var borderOfImage: UIView!{
        didSet{
           borderOfImage.layer.cornerRadius = self.borderOfImage.frame.height/2
            borderOfImage.layer.borderWidth = 1
            borderOfImage.layer.borderColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
           
           
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showMenuAndBack()
        updateViewDesign()

        // Do any additional setup after loading the view.
    }
    
    func updateViewDesign() {
        
        CustomDesign.customCircleImage(image: drImageProfile)
       // CustomDesign.cricleViewDesign(view: borderOfImage)
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
