//
//  MyReservationsTableViewCell.swift
//  Dr.Nour
//
//  Created by Mustafa on 12/16/19.
//  Copyright © 2019 begroup. All rights reserved.
//

import UIKit

class MyReservationsTableViewCell: UITableViewCell {
    @IBOutlet weak var reservationsNameLbl: UILabel!
       @IBOutlet weak var reservationsData: UILabel!
       @IBOutlet weak var reservationsMoney: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
