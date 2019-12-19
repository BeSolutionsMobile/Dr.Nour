//
//  ContactusViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/19/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class ContactusViewController: UIViewController {
         let titlesF = ["Phones","Email","Ziaed Address","Nacr City Address"]
         let des = ["01008182062 - 01024439000 - 01008182062","Info@drnour1.com","No. 551 Tower 2 Arkan Plaza,Floor5, Bostan St., Zaied City, 6 October, Giza" , "No. 123 Hassan El Mamoun St., Princess Diana Tower, In Front Of Ahly Club, Nasr City Cairo"]

    @IBOutlet weak var contactusTableView: UITableView!
    
    @IBOutlet weak var headerView: UIView!{
        didSet{
           headerView.layer.cornerRadius = 25
           headerView.clipsToBounds = true
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}

extension ContactusViewController  : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactusTableViewCell", for: indexPath) as! ContactusTableViewCell
          cell.contactusTitleLbl?.text = titlesF[indexPath.row]
          cell.contactusDesLbl?.text = des[indexPath.row]
        if indexPath.row % 2 == 0 {
            print("\(indexPath.row) is even number")
            
        } else {
             print("\(indexPath.row) is odd number")
             cell.backgroundColor = UIColor.init(named: "PopBg")
            
        }
        
              
              return cell
    }
    
    
    
    //MARK:- didSelectRowAt
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
             
      }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight = 150
        return UITableView.automaticDimension
    }
    
    
}
