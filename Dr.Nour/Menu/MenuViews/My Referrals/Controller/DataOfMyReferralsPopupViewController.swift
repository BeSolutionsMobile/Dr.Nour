//
//  DataOfMyReferralsPopupViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/17/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

protocol BookingsReferredDelegate {
    func transferBookings()
}
class DataOfMyReferralsPopupViewController: UIViewController {
    
    @IBOutlet weak var popView: UIView!{
        didSet{
            popView.layer.cornerRadius = 20
            popView.clipsToBounds = true
        }
    }
    var delegate: BookingsReferredDelegate?
    
    @IBOutlet weak var profilePopupImage: UIImageView!{
        didSet{
            profilePopupImage.layer.cornerRadius = profilePopupImage.frame.size.height/2
            profilePopupImage.clipsToBounds = true
        }
    }
    @IBOutlet weak var namePopupLbl: UILabel!
    @IBOutlet weak var dataJoinLbl: UILabel!
    @IBOutlet weak var numberOfBookings: UILabel!
    @IBOutlet weak var viewAllBookingsBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewDesign()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
        view.addGestureRecognizer(tapGesture)
        
        // Do any additional setup after loading the view.
    }
    @objc func tabToClosePopup()  {
         dismiss(animated: true, completion: nil)
       }

    
    func updateViewDesign() {
        
        CustomDesign.cricleButtonDesign(btn: viewAllBookingsBtn)
    }
    @IBAction func viewAllBookingsBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        delegate?.transferBookings()
        
    }
}
