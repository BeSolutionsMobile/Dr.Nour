//
//  RegisterViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import BEMCheckBox

class RegisterViewController: UIViewController {

    @IBOutlet weak var fullNameTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var phoneTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBOutlet weak var codeTf: UITextField!
    @IBOutlet weak var checkView: BEMCheckBox!
    @IBOutlet weak var loginFacebookBtn: UIButton!
    @IBOutlet weak var footerView: UIView!{
        didSet{
           footerView.layer.cornerRadius = 25
           footerView.clipsToBounds = true
            footerView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner  ]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewDesign()

        // Do any additional setup after loading the view.
    }
    func updateViewDesign() {
        CustomDesign.customTextFaild(textField: fullNameTf)
        CustomDesign.customTextFaild(textField: emailTf)
        CustomDesign.customTextFaild(textField: phoneTf)
        CustomDesign.customTextFaild(textField: passwordTf)
         CustomDesign.customTextFaild(textField: codeTf)
        CustomDesign.cricleButtonDesign(btn: loginFacebookBtn)
    }
    

    
    @IBAction func loginFaceBookBtnPressed(_ sender: UIButton) {
    }
    
}
