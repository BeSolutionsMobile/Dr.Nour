//
//  GalleryViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/18/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    let titlesF = ["Star Album","Medical Album","Tourism Album","Zaid Clinic Album","Nacer City Clinic Album"  , "Maadi Clinic Album" ]
    
    let imagesF = ["Star Album","Medical Album","Tourism Album","Zaid Clinic Album","Nacer City Clinic Album"  , "Maadi Clinic Album" ]

    @IBOutlet weak var galleryCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showMenuAndBack() 
        updateViewDesign()

        // Do any additional setup after loading the view.
    }
    
    
       func updateViewDesign() {
           
           galleryCollectionView.layer.cornerRadius = 20
           galleryCollectionView.clipsToBounds = true
       }


}

//   extention for UICollectionViewDelegateFlowLayout
extension GalleryViewController : UICollectionViewDelegateFlowLayout {
    

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let cellSize = CGSize(width: self.view.frame.width/2 - 15, height: self.view.frame.width)
           return cellSize
    }
    

}

//end of extension  ViewController

extension GalleryViewController : UICollectionViewDataSource , UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCollectionViewCell", for: indexPath) as! GalleryCollectionViewCell
        let cellIndex = indexPath.item
        cell.galleryImage.image = UIImage(named: imagesF[cellIndex])
        cell.galleryNameLbl.text = titlesF[cellIndex]
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
       
    }
    
}



