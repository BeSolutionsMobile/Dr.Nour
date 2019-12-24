//
//  DataOfServiceInfoPouopViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class DataOfServiceInfoPouopViewController: UIViewController {

    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var popView: UIView!{
        didSet{
           popView.layer.cornerRadius = 20
           popView.clipsToBounds = true
        }
    }
    @IBOutlet weak var messageTitle: UILabel!
    @IBOutlet weak var messageHint: UILabel!
    @IBOutlet weak var messageDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
        bigView.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    @objc func tabToClosePopup()  {
            dismiss(animated: true, completion: nil)
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
