//
//  HomeTilesTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class HomeTilesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var movieTheaterImage: UIImageView!
    @IBAction func watchListButtonTapped(_ sender: Any) {
    }
    
    @IBOutlet weak var calendarImage: UIImageView!
    @IBAction func scheduleButtonTapped(_ sender: Any) {
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
