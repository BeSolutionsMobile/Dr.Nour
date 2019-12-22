//
//  AllServicesViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/15/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import SideMenu

class AllServicesViewController: UIViewController {
    
    @IBOutlet weak var contentOfAllServices: UIView!
    let titlesF = ["Hollywood Smile","Pediatric Dentistry","Laser","Crowns","Teeth Whitning"  , "Cosmetic Fillings" , "Implant & Oral Surgery" , "Orthodontics"]
    
    let imagesF = ["Hollywood Smile","Pediatric Dentistry","Laser","Crowns","Teeth Whitning"  , "Cosmetic Fillings" , "Implant & Oral Surgery" , "Orthodontics"]
    
    @IBOutlet weak var servicesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
         updateViewDesign()
                
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func updateViewDesign() {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        contentOfAllServices.layer.cornerRadius = 20
        contentOfAllServices.clipsToBounds = true
    }
    
    @IBAction func menuItemPressed(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(identifier: "SideMenuNavigationController") as! SideMenuNavigationController
                       vc.settings = SharedMenu.settings(view: self.view)
                      present(vc, animated: true, completion: nil)
    }
    
}


//   extention for UICollectionViewDelegateFlowLayout
extension AllServicesViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let cellSize = CGSize(width: self.view.frame.width/2 , height: self.view.frame.width / 2 + 30)
           return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

//end of extension  ViewController

extension AllServicesViewController : UICollectionViewDataSource , UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ServicesCollectionViewCell", for: indexPath) as! ServicesCollectionViewCell
        let cellIndex = indexPath.item
        cell.servicesImage.image = UIImage(named: imagesF[cellIndex])
        cell.servicesNmaeLbl.text = titlesF[cellIndex]
        if indexPath.row % 2 == 0 {
                     print("\(indexPath.row) is even number")
                     
                 } else {
                     print("\(indexPath.row) is odd number")
                     cell.line1.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                     
                 }
        if indexPath.row == titlesF.count - 1  ||  indexPath.row == titlesF.count - 2  {
            cell.line2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let vc = storyboard?.instantiateViewController(withIdentifier: "ServiceInfoViewController") as! ServiceInfoViewController
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
       
    }
    
}


