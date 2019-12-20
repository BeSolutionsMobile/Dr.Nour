//
//  TitleOfSectionTableViewCell.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/20/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class TitleOfSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var groupName: UILabel!{
        didSet{
            self.groupName.layer.cornerRadius = self.groupName.frame.height/2
            self.groupName.clipsToBounds = true
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
