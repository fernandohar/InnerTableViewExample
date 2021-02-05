//
//  InnerTableViewCell.swift
//  InnerTableViewExample
//
//  Created by Fernando on 3/11/2020.
//  Copyright © 2020 Fernando. All rights reserved.
//

import UIKit

class InnerTableViewCell: UITableViewCell {

    @IBOutlet weak var innerLabel: UILabel!
    @IBOutlet weak var innerDescriptionLabel : UILabel!
    @IBOutlet weak var innerPriceLabel : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
