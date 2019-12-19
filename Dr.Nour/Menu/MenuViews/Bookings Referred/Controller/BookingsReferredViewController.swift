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
    @IBOutlet weak var totalReservationsOfMoney: UILabel!
    @IBOutlet weak var totalEarnedOfMoney: UILabel!
    
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var totalEarnedView: UIView!{
        didSet{
           totalEarnedView.layer.cornerRadius = 25
           totalEarnedView.clipsToBounds = true
           totalEarnedView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner  ]

        }
    }
    
    let titlesF = ["BigMac","BigTasty","Chicken-Fillet","ChickenMac","Gaden-Salad","Chicken-Fillet","Chicken-Fillet","Chicken-Fillet","Chicken-Fillet" ]
    var titlebar : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
     


        // Do any additional setup after loading the view.
    }
    
    func updateViewDesign(title : String , color : UIColor ) {
            self.title = title
           footerView.backgroundColor = color
       
        
       
    }
    func update()  {
        CustomDesign.criclLableDesign(lable: totalReservationsOfMoney)
        CustomDesign.criclLableDesign(lable: totalEarnedOfMoney)
        if let t = titlebar , let c = color {
            updateViewDesign(title: t, color: c)
            
        }
    }

   
}

extension BookingsReferredViewController  : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookingsReferredTableViewCell", for: indexPath) as! BookingsReferredTableViewCell
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

