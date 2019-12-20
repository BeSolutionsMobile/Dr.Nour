//
//  MainNavigationController.swift
//  Konsil
//
//  Created by Ali Mohamed on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit
import SideMenu
class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension UIViewController {
    func showMenuAndBack() {
        navigationItem.hidesBackButton = true
        let rightBack = UIBarButtonItem(title: "", style: .done,target: self, action: #selector(backBtn))
        rightBack.image = UIImage(named: "back")
        rightBack.tintColor = UIColor.white
        navigationItem.rightBarButtonItem = rightBack
        let menuBut = UIBarButtonItem(title: "", style: .done,target: self, action: #selector(menuBtn))
        menuBut.image = UIImage(named: "menu1")
        menuBut.tintColor = UIColor.white
        navigationItem.leftBarButtonItem = menuBut
    }
    
    @objc func backBtn(){
                navigationController?.popViewController(animated: true)

    }
    
    @objc func menuBtn(){
        let vc = storyboard?.instantiateViewController(identifier: "SideMenuNavigationController") as! SideMenuNavigationController
         vc.settings = SharedMenu.settings(view: self.view)
        present(vc, animated: true, completion: nil)
        
        
    }
}
