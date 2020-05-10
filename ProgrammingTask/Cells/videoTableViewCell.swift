//
//  albumResultTableViewCell.swift
//  phLog
//
//  Created by Mina Yousry on 10/25/18.
//  Copyright © 2018 Softmills. All rights reserved.
//

import UIKit

class videoTableViewCell: UITableViewCell {

 
    @IBOutlet weak var videoSubLbl: UILabel!
    @IBOutlet weak var videoLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
