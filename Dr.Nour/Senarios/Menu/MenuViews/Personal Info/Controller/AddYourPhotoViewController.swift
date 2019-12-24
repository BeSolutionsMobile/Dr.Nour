//
//  AddYourPhotoViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/22/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class AddYourPhotoViewController: UIViewController {

    @IBOutlet weak var bigView: UIView!
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
    
    let ImagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        addDelegate()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
        bigView.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    
    @objc func tabToClosePopup()  {
      dismiss(animated: true, completion: nil)
    }
    

    func addDelegate()  {
         ImagePicker.delegate = self
    }

  

    @IBAction func ImageBtnPressed(_ sender: UIButton) {
             ImagePicker.sourceType = .photoLibrary
              present(ImagePicker, animated: true, completion: nil)
    }
    @IBAction func addPhotoBtnPressed(_ sender: UIButton) {
    }
}

extension AddYourPhotoViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let imageData = info[.originalImage] as! UIImage
         imageProfile.image = imageData
         Rounded.roundedImage(imageView: imageProfile)
        _ = FirebaseUploader.uploadToFirebase(viewController: self, imagePicker: ImagePicker, didFinishPickingMediaWithInfo: info)
        
    }
}
