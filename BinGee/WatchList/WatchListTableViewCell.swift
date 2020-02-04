//
//  WatchListTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/4/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WatchListTableViewCell: UITableViewCell {

    @IBOutlet weak var seriesOnListLabel: UILabel!
    @IBOutlet weak var viewSeriesButton: UIButton!
    
    
    var series: Series? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let series = series else { return }
        
        seriesOnListLabel.text = series.title
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
