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
    
    

    var seriesController = SeriesController()
     var series: [Series] = []
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

    
    @IBAction func viewSeriesButtonTapped(_ sender: UIButton) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//     func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ViewSeriesShowSegue" {
//            guard let viewSeriesVC = segue.destination as? AddSeriesViewController else { return }
//         viewSeriesVC.seriesController = seriesController
//
//        }
//    }

}
