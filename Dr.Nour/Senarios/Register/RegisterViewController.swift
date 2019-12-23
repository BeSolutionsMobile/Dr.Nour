//
//  RegisterViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import BEMCheckBox
import LabelSwitch

class RegisterViewController: UIViewController {

    @IBOutlet weak var fullNameTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var phoneTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var switchPodBtn: LabelSwitch!
    @IBOutlet weak var codeTf: UITextField!
    @IBOutlet weak var checkView: BEMCheckBox!{
        didSet{
            self.checkView.boxType = .square
        }
    }
    @IBOutlet weak var registerBtn: UIButton!
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
        switchPodBtn.delegate = self 
        switchPodBtn.curState = .R
        switchPodBtn.circleShadow = false
        switchPodBtn.fullSizeTapEnabled = true
        CustomDesign.customTextFaild(textField: fullNameTf)
        CustomDesign.customTextFaild(textField: emailTf)
        CustomDesign.customTextFaild(textField: phoneTf)
        CustomDesign.customTextFaild(textField: passwordTf)
         CustomDesign.customTextFaild(textField: codeTf)
        CustomDesign.cricleButtonDesign(btn: loginFacebookBtn)
        CustomDesign.cricleButtonDesign(btn: registerBtn)
    }
    
    
    @IBAction func acceptAllTermsAndConditions(_ sender: BEMCheckBox) {
    }
    

    @IBAction func registerBtnPressed(_ sender: UIButton) {
    }
    
    @IBAction func loginFaceBookBtnPressed(_ sender: UIButton) {
    }
    
}


extension RegisterViewController: LabelSwitchDelegate {
    func switchChangToState(sender: LabelSwitch) {
        switch sender.curState {
        case .L: print("circle on left")
        case .R: print("circle on right")
        }
    }
}
