//
//  MyReservationsViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class MyReservationsViewController: UIViewController {
    
     let titlesF = ["BigMac","BigTasty","Chicken-Fillet","ChickenMac","Gaden-Salad"  , "Large-Frise" , "McNuggets-6psc" , "SharingBox"]

    @IBOutlet weak var myReservationsTableView: UITableView!{
        didSet{
           myReservationsTableView.layer.cornerRadius = 25
           myReservationsTableView.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showMenuAndBack() 
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MyReservationsViewController  : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyReservationsTableViewCell", for: indexPath) as! MyReservationsTableViewCell
       // cell.textLabel?.text = titlesF[indexPath.row]
              
              return cell
    }
    
    
       func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
          myReservationsTableView.rowHeight = UITableView.automaticDimension
          myReservationsTableView.estimatedRowHeight = 75

          
       }
    //MARK:- didSelectRowAt
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
              let vc = storyboard?.instantiateViewController(identifier: "DataOfReserviationsViewController") as! DataOfReserviationsViewController
                vc.modalPresentationStyle = .overFullScreen
              self.present(vc, animated: true, completion: nil)
          
      }
    
    
}
