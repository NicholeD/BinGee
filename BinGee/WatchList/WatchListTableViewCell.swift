//
//  WatchListTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/5/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WatchListTableViewCell: UITableViewCell {

    @IBOutlet weak var seriesOnListLabel: UILabel!
    @IBOutlet weak var seriesEpisodeNumberLabel: UILabel!
    @IBOutlet weak var viewSeriesButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func viewSeriesButtonTapped(_ sender: UIButton) {
       let storyboard = UIStoryboard(name: "HomePage", bundle: nil);
       let vc = storyboard.instantiateViewControllerWithIdentifier("MySecondScreen") as! UIViewController; 
       self.presentViewController(vc, animated: true, completion: nil)
      
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
