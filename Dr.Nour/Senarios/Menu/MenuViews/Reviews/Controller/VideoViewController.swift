//
//  VideoViewController.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/23/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {
    var url : String?

    @IBOutlet weak var videoWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(link: url!)
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tabToClosePopup))
        view.addGestureRecognizer(tapGesture)
    }
    @objc func tabToClosePopup()  {
      dismiss(animated: true, completion: nil)
    }

    func getVideo(link : String) {
        
        let url = URL(string: link)
        videoWebView.loadRequest(URLRequest(url: url!))
        
    }

    

}
