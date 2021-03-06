//
//  AddYourPhoneViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class AddYourPhoneViewController: UIViewController {
    @IBOutlet weak var bigView: UIView!
    
    @IBOutlet weak var popView: UIView!{
        didSet{
           popView.layer.cornerRadius = 20
           popView.clipsToBounds = true
        }
    }
    @IBOutlet weak var addPhoneTf: DesignableUITextField!
    @IBOutlet weak var changeBtn: UIButton!{
        didSet{
           changeBtn.layer.cornerRadius = changeBtn.frame.size.height/2
           changeBtn.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
        bigView.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    @objc func tabToClosePopup()  {
      dismiss(animated: true, completion: nil)
    }

    @IBAction func changeBtnPressed(_ sender: UIButton) {
    }
}
