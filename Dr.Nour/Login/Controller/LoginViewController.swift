//
//  LoginViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import BEMCheckBox
import BiometricAuthentication


class LoginViewController: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginWithFaceBookBtn: UIButton!
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var checkBtn: BEMCheckBox!{
        didSet{
            self.checkBtn.boxType = .square
        }
    }
    
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
          CustomDesign.customViewTextFaild(view: emailView)
          CustomDesign.customViewTextFaild(view: passwordView)
          CustomDesign.cricleButtonDesign(btn: loginWithFaceBookBtn)
          CustomDesign.cricleButtonDesign(btn: loginBtn)
      }
    
    @IBAction func biometricAuthChecked(_ sender: BEMCheckBox) {
           Shared.BiometricAuthEnabled = sender.on
       }
    
    @IBAction func loginFaceBookBtnPressed(_ sender: UIButton) {
    }
    @IBAction func loginBtnPressed(_ sender: UIButton) {
    }
    @IBAction func registerBtnPressed(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "RegisterViewController") as? RegisterViewController {
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
    }
}
