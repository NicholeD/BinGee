//
//  WatchListCellTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/4/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WatchListCellTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTheaterImage: UIImageView!
    @IBOutlet weak var watchListButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
