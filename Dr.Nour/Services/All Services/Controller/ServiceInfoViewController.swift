//
//  ServiceInfoViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import ImageSlideshow
import BEMCheckBox

class ServiceInfoViewController: UIViewController {
    
    @IBOutlet weak var titleView: UIView!{
        didSet{
           titleView.layer.cornerRadius = 25
           titleView.clipsToBounds = true
        }
    }
    @IBOutlet weak var imageSildeOfDrNour: ImageSlideshow!{
        didSet{
            imageSildeOfDrNour.setImageInputs([
            ImageSource(image: UIImage(named: "imageSilder1")!),
            ImageSource(image: UIImage(named: "imageSilder2")!),
            ImageSource(image: UIImage(named: "imageSilder3")!)
           ])
        }
    }
        
    @IBOutlet weak var contentViewOfService: UIView!{
        didSet{
        contentViewOfService.layer.cornerRadius = 25
           contentViewOfService.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var infoTextOfServiceLbl: UILabel!
    @IBOutlet weak var feature1Chk: BEMCheckBox!
    @IBOutlet weak var feature2Chk: BEMCheckBox!
    @IBOutlet weak var feature3Chk: BEMCheckBox!
    @IBOutlet weak var bookingNowBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewDesign()
        
        
    }
    
    func updateViewDesign() {
             designSliderImage(imageSilder: imageSildeOfDrNour)
             CustomDesign.cricleButtonDesign(btn: bookingNowBtn)
         }
   
     func designSliderImage(imageSilder : ImageSlideshow) {
     imageSilder.slideshowInterval = 5.0
     imageSilder.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
     imageSilder.contentScaleMode = UIViewContentMode.scaleAspectFill
     
     let pageControl = UIPageControl()
     pageControl.currentPageIndicatorTintColor = UIColor.red
     pageControl.pageIndicatorTintColor = UIColor.yellow
     pageControl.numberOfPages = 3
     imageSilder.pageIndicator = pageControl
     imageSilder.activityIndicator = DefaultActivityIndicator()
     imageSilder.activityIndicator = DefaultActivityIndicator()
        imageSilder.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)

     let recognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
     imageSilder.addGestureRecognizer(recognizer)
     }
     
     
     @objc func didTap() {
     let fullScreenController = imageSildeOfDrNour.presentFullScreenController(from: self)
   
     fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
     }
    
    
 
    @IBAction func bookingNowBtnPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "DataOfServiceInfoPouopViewController") as! DataOfServiceInfoPouopViewController
         vc.modalPresentationStyle = .overFullScreen

        self.present(vc, animated: true, completion: nil)
    }
    
    
}







extension ServiceInfoViewController : ImageSlideshowDelegate {
    func imageSlideshow(_ imageSlideshow: ImageSlideshow, didChangeCurrentPageTo page: Int) {
        print("current page:", page)
    }
    
}
