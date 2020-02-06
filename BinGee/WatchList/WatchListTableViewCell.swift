//
//  WatchListTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/5/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

protocol WatchListTableViewCellDelegate {
    
    func toggleHasBeenRead(for cell: WatchListTableViewCell)
 
}
class WatchListTableViewCell: UITableViewCell {

    @IBOutlet weak var seriesOnListLabel: UILabel!
    @IBOutlet weak var seriesEpisodeNumberLabel: UILabel!
    
    @IBOutlet weak var checkedButton: UIButton!
    @IBAction func checkedButtonTapped(_ sender: Any) {
        delegate?.toggleHasBeenRead(for: self)
       }
    
    var seriesController = SeriesController?.self
    
    var delegate: WatchListTableViewCellDelegate?
    
//    var delegate: SeriesAddedDelegate?
    
     var series: Series?
    
     func viewDidLoad() {
       
        updateViews()
    }
    
   
    
    func updateViews() {
        guard let series = series else { return }
        
        seriesOnListLabel.text = series.title
        seriesEpisodeNumberLabel.text = String(series.totalEpisodes)
        
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
