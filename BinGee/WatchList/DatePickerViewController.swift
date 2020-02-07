//
//  DatePickerViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/6/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController, UITableViewDelegate {
     

    @IBOutlet weak var enterDateMessageLabel: UILabel!
    
    var seriesController: SeriesController!
    
    override func viewDidLoad() {
         updateViews()
     }
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var submitDateButton: UIButton!
    
    var series: Series?
    
    func updateViews() {
        guard let series = series else { return }
        enterDateMessageLabel.text = "Please enter a date you would like to finish \(series.title)"
      
    }

    @IBAction func submitDateButtonTapped(_ sender: Any) {
        guard datePicker != nil else { return }
        
       navigationController?.popViewController(animated: true)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "AddSeriesModallySegue" {
                guard let viewSeriesVC = segue.destination as? WatchListTableViewController else { return }
             viewSeriesVC.seriesController = seriesController
            }
        }
}


