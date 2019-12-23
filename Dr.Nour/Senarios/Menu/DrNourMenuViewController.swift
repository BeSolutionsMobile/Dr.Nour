//
//  DrNourMenuViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import SDWebImage
class DrNourMenuViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
        {
        didSet{
            Rounded.roundedImage(imageView: profileImage)
            profileImage.sd_setImage(with: URL(string: ""), placeholderImage: UIImage(named: "profile"))
        }
    }

    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var bigViewOfScroll: UIView!{
        didSet{
           bigViewOfScroll.layer.cornerRadius = 25
           bigViewOfScroll.clipsToBounds = true
           bigViewOfScroll.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMaxXMaxYCorner  ]
        }
    }
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var firstSideMenu: UIView!{
        didSet{
            firstSideMenu.layer.cornerRadius = 25
            firstSideMenu.clipsToBounds = true
            firstSideMenu.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner  ]
        }
    }
    @IBOutlet weak var secondSideMenu: UIView!{
        didSet{
           secondSideMenu.layer.cornerRadius = 25
           secondSideMenu.clipsToBounds = true
           secondSideMenu.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner  ]
        }
    }
     let menuItem = ConstantMenu()
    let ImagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
         ImagePicker.delegate = self
        getData()

        // Do any additional setup after loading the view.
    }
    
    
    func getData() {
        profileImage.sd_setImage(with: URL(string: UserDefault.getPhoto()), placeholderImage: UIImage(named: "profile"))
        
    }
    
    
    @IBAction func changePhoto(_ sender: UIButton) {
        ImagePicker.sourceType = .photoLibrary
        present(ImagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func itemMenuBtnPressed(_ sender: UIButton) {
        guard let vc = storyboard?.instantiateViewController(identifier: menuItem.controller1[sender.tag - 1] ) else { return  }
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func logOutBtnPressed(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController {
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    
}

extension DrNourMenuViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let imageData = info[.originalImage] as! UIImage
        profileImage.image = imageData
        _ = FirebaseUploader.uploadToFirebase(viewController: self, imagePicker: ImagePicker, didFinishPickingMediaWithInfo: info)
        
    }
}
