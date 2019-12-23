//
//  ContactusTableViewCell.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/19/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class ContactusTableViewCell: UITableViewCell {

    @IBOutlet weak var contactusTitleLbl: UILabel!
    @IBOutlet weak var contactusDesLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
