//
//  ScheduleTableViewCell.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/6/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

protocol DateScheduled {
    func dateWasChosen(_ date: DatePickerViewController)
}

class ScheduleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var dateTextFieldLabel: UILabel!
    @IBOutlet weak var seriesOnDeckTextFieldLabel: UILabel!
    
    var delegate: DateScheduled?
    
    var series: Series?
    
    func updateViews() {
       
        guard let series = series else { return }
//        dateTextFieldLabel.text = String(series.scheduleDate)
        
       
//        dateFormatter.date(from: dateString)
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, yyy"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
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
