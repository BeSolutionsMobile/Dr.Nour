//
//  AddYourPhotoViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/22/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class AddYourPhotoViewController: UIViewController {

    @IBOutlet weak var popupView: UIView!{
        didSet{
           popupView.layer.cornerRadius = 20
           popupView.clipsToBounds = true
        }
    }
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var addPhotoBtn: UIButton!{
        didSet{
           addPhotoBtn.layer.cornerRadius = addPhotoBtn.frame.size.height/2
           addPhotoBtn.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
        view.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    
    @objc func tabToClosePopup()  {
      dismiss(animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func ImageBtnPressed(_ sender: UIButton) {
    }
    @IBAction func addPhotoBtnPressed(_ sender: UIButton) {
    }
}
