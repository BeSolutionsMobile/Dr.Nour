//
//  VideoViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/23/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    
    @IBOutlet weak var videoWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
                 view.addGestureRecognizer(tapGesture)
    }
    @objc func tabToClosePopup()  {
      dismiss(animated: true, completion: nil)
    }

    func getVideo() {
        
        let url = URL(string: "https://www.youtube.com/embed/vL1FyHB-p7o")
        videoWebView.loadRequest(URLRequest(url: url!))
        
    }

    

}
