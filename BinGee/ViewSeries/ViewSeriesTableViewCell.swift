//
//  ViewSeriesTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/6/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class ViewSeriesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var seasonNumberLabel: UILabel!
    
    @IBOutlet weak var episodeNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func seasonSeenToggle(_ sender: Any) {
      }
      
      @IBAction func episodeSeenToggle(_ sender: Any) {
      }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
