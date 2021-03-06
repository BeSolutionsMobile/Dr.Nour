//
//  PersonalInfoViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import SideMenu

class PersonalInfoViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var photobl: UILabel!
    @IBOutlet weak var headerView: UIView!{
        didSet{
           headerView.layer.cornerRadius = 25
           headerView.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showMenuAndBack() 
        

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func changePasswordBtnPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "ChangePasswordViewController") as! ChangePasswordViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func addYourPhoneBtnPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "AddYourPhoneViewController") as! AddYourPhoneViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    @IBAction func addYourPhotoBtnPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "AddYourPhotoViewController") as! AddYourPhotoViewController
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
    
    }
    
    
 
}
