//
//  DataOfReserviationsViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class DataOfReserviationsViewController: UIViewController {
    @IBOutlet var bigView: UIView!
    @IBOutlet weak var serviceName: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!{
        didSet{
           amountLbl.layer.cornerRadius = amountLbl.frame.size.height/2
           amountLbl.clipsToBounds = true
        }
    }
    @IBOutlet weak var dataLbl: UILabel!
    @IBOutlet weak var popView: UIView!{
        didSet{
           popView.layer.cornerRadius = 20
           popView.clipsToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        bigView.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    @objc func tableViewTapped()  {
         dismiss(animated: true, completion: nil)
       }
    

   

}
