//
//  ReviewsViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import ImageSlideshow
import Player

class ReviewsViewController: UIViewController {

    @IBOutlet weak var imagesReviewsView: UIView!{
        didSet{
           imagesReviewsView.layer.cornerRadius = 25
           imagesReviewsView.clipsToBounds = true
        }
    }
    @IBOutlet weak var imagesReviewsViewSlider: ImageSlideshow!{
        didSet{
            imagesReviewsViewSlider.setImageInputs([
            ImageSource(image: UIImage(named: "imageSilder1")!),
            ImageSource(image: UIImage(named: "imageSilder2")!),
            ImageSource(image: UIImage(named: "imageSilder3")!)
           ])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewDesign()
        

        // Do any additional setup after loading the view.
    }
    

   func updateViewDesign() {
              designSliderImage(imageSilder: imagesReviewsViewSlider)
          }
    
      func designSliderImage(imageSilder : ImageSlideshow) {
      imageSilder.slideshowInterval = 5.0
      imageSilder.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
      imageSilder.contentScaleMode = UIViewContentMode.scaleAspectFill
      
      let pageControl = UIPageControl()
      pageControl.currentPageIndicatorTintColor = UIColor.init(named: "SkyColor")
      pageControl.pageIndicatorTintColor = UIColor.init(named: "SkyColor")
      pageControl.numberOfPages = 3
      imageSilder.pageIndicator = pageControl
      imageSilder.activityIndicator = DefaultActivityIndicator()
      imageSilder.activityIndicator = DefaultActivityIndicator()
      imageSilder.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)

      let recognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
      imageSilder.addGestureRecognizer(recognizer)
      }
      
      
      @objc func didTap() {
      let fullScreenController = imagesReviewsViewSlider.presentFullScreenController(from: self)
      fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
      }
}
