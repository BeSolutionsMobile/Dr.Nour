//
//  BookingsReferredViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/17/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class BookingsReferredViewController: UIViewController {
    @IBOutlet weak var bookingsReferredTableView: UITableView!{
        didSet{
           bookingsReferredTableView.layer.cornerRadius = 25
           bookingsReferredTableView.clipsToBounds = true
            bookingsReferredTableView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner  ]
        }
    }
    @IBOutlet weak var totalReservationsOfMoney: UILabel!{
        didSet{
           totalReservationsOfMoney.layer.cornerRadius = totalReservationsOfMoney.frame.size.height/2
           totalReservationsOfMoney.clipsToBounds = true
        }
    }
    @IBOutlet weak var totalEarnedOfMoney: UILabel!{
        didSet{
           totalEarnedOfMoney.layer.cornerRadius = totalEarnedOfMoney.frame.size.height/2
           totalEarnedOfMoney.clipsToBounds = true
        }
    }
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var totalEarnedView: UIView!{
        didSet{
           totalEarnedView.layer.cornerRadius = 25
           totalEarnedView.clipsToBounds = true
           totalEarnedView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner  ]

        }
    }
    
    let titlesF = ["BigMac","BigTasty","Chicken-Fillet","ChickenMac","Gaden-Salad","Chicken-Fillet","Chicken-Fillet","Chicken-Fillet","Chicken-Fillet" ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
}

extension BookingsReferredViewController  : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookingsReferredTableViewCell", for: indexPath) as! BookingsReferredTableViewCell
       // cell.textLabel?.text = titlesF[indexPath.row]
              
              return cell
    }
    
    
       func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
          bookingsReferredTableView.rowHeight = UITableView.automaticDimension
          bookingsReferredTableView.estimatedRowHeight = 75

          
       }
    //MARK:- didSelectRowAt
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
              
          
      }
    
    
}

