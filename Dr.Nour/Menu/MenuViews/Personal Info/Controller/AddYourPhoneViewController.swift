//
//  AddYourPhoneViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class AddYourPhoneViewController: UIViewController {

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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func changeBtnPressed(_ sender: UIButton) {
    }
}
