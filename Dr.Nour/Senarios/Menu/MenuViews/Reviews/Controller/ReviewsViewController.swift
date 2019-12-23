//
//  ReviewsViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import ImageSlideshow
import AVKit

class ReviewsViewController: UIViewController {
    
    

    @IBOutlet weak var imagesReviewsView: UIView!{
        didSet{
           imagesReviewsView.layer.cornerRadius = 25
           imagesReviewsView.clipsToBounds = true
        }
    }
    @IBOutlet weak var videoView: UIView!{
        didSet{
           videoView.layer.cornerRadius = 25
           videoView.clipsToBounds = true
        }
    }
    @IBOutlet weak var imagesReviewsViewSlider: ImageSlideshow!
    @IBOutlet weak var videoSliderView: ImageSlideshow!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showMenuAndBack() 
        updateViewDesign()
       
        
       
        
  

        // Do any additional setup after loading the view.
    }
    

    func updateViewDesign() {
        designSliderImage(imageSilder: imagesReviewsViewSlider)
        designSliderVideo(imageSilder: videoSliderView)
        
        imagesReviewsViewSlider.setImageInputs([
                ImageSource(image: UIImage(named: "imageSilder1")!),
                ImageSource(image: UIImage(named: "imageSilder2")!),
                AlamofireSource(urlString: "https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080")!
               ])
        
        
        
        videoSliderView.setImageInputs([
            ImageSource(image: UIImage(named: "imageSilder1")!),
            AlamofireSource(urlString: "https://img.youtube.com/vi/vL1FyHB-p7o/0.jpg")!,
            AlamofireSource(urlString: "https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080")!
        ])
        
        
        
        
        
        
        
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
    
    
    
    func designSliderVideo(imageSilder : ImageSlideshow) {
    imageSilder.slideshowInterval = 5.0
    imageSilder.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
    imageSilder.contentScaleMode = UIViewContentMode.scaleAspectFill
    let pageControl = UIPageControl()
    pageControl.currentPageIndicatorTintColor = UIColor.white
    pageControl.pageIndicatorTintColor = UIColor.white
    pageControl.numberOfPages = 3
    imageSilder.pageIndicator = pageControl
    imageSilder.activityIndicator = DefaultActivityIndicator()
    imageSilder.activityIndicator = DefaultActivityIndicator()
    imageSilder.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(didTap2))
    imageSilder.addGestureRecognizer(recognizer)

   
    }
    
      
      
      @objc func didTap() {
      let fullScreenController = imagesReviewsViewSlider.presentFullScreenController(from: self)
      fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
      }
    @objc func didTap2() {
        if let vc = storyboard?.instantiateViewController(identifier: "VideoViewController") as? VideoViewController {
                  vc.modalPresentationStyle = .fullScreen
                  present(vc, animated: true, completion: nil)
              }
        
 
    }
    
    
    
}



