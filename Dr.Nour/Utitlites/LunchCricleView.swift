//
//  LunchCricleView.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/20/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class LunchCricleView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUiview()
    }
    
    func setUpUiview()  {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
    }

}
