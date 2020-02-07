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
class WatchListTableViewCell: UITableViewCell, SeriesAddedDelegate {
   
    

    @IBOutlet weak var seriesOnListLabel: UILabel!
    @IBOutlet weak var seriesEpisodeNumberLabel: UILabel!
    @IBOutlet weak var checkedButton: UIButton!
    @IBAction func checkedButtonTapped(_ sender: Any) {
        delegate?.toggleHasBeenRead(for: self)
       }
    
    var seriesController: SeriesController?
    
    var delegate: WatchListTableViewCellDelegate?
    
    
     var series: Series?
    
     func viewDidLoad() {
       updateViews()
    }
     
    func seriesWasAdded(_ series: Series) {
           updateViews()
       }
    
    func updateViews() {
        guard let series = series else { return }
        
        seriesOnListLabel.text = series.title
        seriesEpisodeNumberLabel.text = "\(series.seasons) of seasons, \(series.totalEpisodes)"
        
        if series.seen {
            checkedButton.imageView?.image = UIImage(named: "checked")
        } else {
           checkedButton.imageView?.image = UIImage(named: "unchecked")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
 
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
     func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddSeriesModallySegue" {
            guard let viewSeriesVC = segue.destination as? DatePickerViewController else { return }
         viewSeriesVC.seriesController = seriesController

        }
    }

}
