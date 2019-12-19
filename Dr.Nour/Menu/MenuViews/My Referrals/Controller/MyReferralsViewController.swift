//
//  MyReferralsViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/17/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class MyReferralsViewController: UIViewController {
    let titlesF = ["BigMac","BigTasty","Chicken-Fillet","ChickenMac"]
    @IBOutlet weak var myReferralsTableView: UITableView!
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
extension MyReferralsViewController  : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyReferralsTableViewCell", for: indexPath) as! MyReferralsTableViewCell
      // cell.textLabel?.text = titlesF[indexPath.row]
              
              return cell
    }
    
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         tableView.estimatedRowHeight = 175
         return UITableView.automaticDimension
     }
    
    
    
    //MARK:- didSelectRowAt
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

             let vc = storyboard?.instantiateViewController(identifier: "DataOfMyReferralsPopupViewController") as! DataOfMyReferralsPopupViewController
//               // vc.modalPresentationStyle = .overFullScreen
              vc.delegate = self
             self.present(vc, animated: true, completion: nil)
          
      }
    
    
}


extension MyReferralsViewController: BookingsReferredDelegate {
    func transferBookings() {
        let vc = storyboard?.instantiateViewController(identifier: "BookingsReferredViewController") as! BookingsReferredViewController
        vc.titlebar = "Ahmed Reservations"
        vc.color = UIColor.init(named: "FooterColor")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
