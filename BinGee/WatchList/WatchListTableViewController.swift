//
//  WatchListTableViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/5/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit
protocol SeriesAddedDelegate {
    
    func seriesWasAdded(_ series: Series)
}

class WatchListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SeriesAddedDelegate {
   
    @IBOutlet weak var watchListTableView: UITableView!
    @IBOutlet weak var enterSeriesTextField: UITextField!
    @IBOutlet weak var enterNumberOfSeasonsTextField: UITextField!
    @IBOutlet weak var enterTotalNumberOfEpisodesTextField: UITextField!
    
    var seriesController: SeriesController?
    var series: Series?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSeries(_: Series.self)
    }
    
    @IBAction func addSeries(_ sender: Any){
          
        guard let title = enterSeriesTextField.text,
            let seasonsString = (enterNumberOfSeasonsTextField.text),
            let seasons = Int(seasonsString),
            let episodeString = enterTotalNumberOfEpisodesTextField.text,
            let totalEpisodes = Int(episodeString),
            let addSeries = enterSeriesTextField.text,
            !addSeries.isEmpty else { return }
        
        let series = Series(title: title, seasons: seasons, totalEpisodes: totalEpisodes, scheduleDate: Date.init(), seen: false)
        
        if let addSeries = enterSeriesTextField.text,
            !addSeries.isEmpty {
            series.title.append(addSeries)
            dismiss(animated: true, completion: nil)
            watchListTableView.reloadData()
        }
      }
    
    func seriesWasAdded(_ series: Series) {
           addSeries(series)
       }
 
       // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            guard let seriesController = seriesController else { return 0}
            return seriesController.series.count
    }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SeriesOnListCell", for: indexPath) as? WatchListTableViewCell,
                let seriesController = seriesController else { return UITableViewCell()}

            let seriesOnList = seriesController.series[indexPath.row]
            cell.series = seriesOnList
    
            return cell
        }
//        // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddSeriesModallySegue" {
            guard let addSeriesVC = segue.destination as? DatePickerViewController else { return }
            addSeriesVC.seriesController = seriesController
            addSeriesVC.delegate = self
      }
   }
}
extension WatchListTableViewController: UITextFieldDelegate {
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if let text = textField.text,
        !text.isEmpty {
        switch textField {
        case enterSeriesTextField:
            textField.resignFirstResponder()
        case enterNumberOfSeasonsTextField:
            textField.resignFirstResponder()
        default:
            textField.resignFirstResponder()
        }
     }
     return false
  }
}
