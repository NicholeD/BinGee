//
//  WatchListTableViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/5/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WatchListTableViewController: UITableViewController, SeriesAddedDelegate {
  


    @IBOutlet weak var watchListTableView: UITableView!
    @IBOutlet weak var enterSeriesTextField: UITextField!
    @IBOutlet weak var enterNumberOfSeasonsTextField: UITextField!
    @IBOutlet weak var enterTotalNumberOfEpisodesTextField: UITextField!
    
    var seriesController = SeriesController()
    
    var series: [Series] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func addSeries(_ sender: Any){
        
    }
    func seriesWasAdded(_ series: Series) {
//        series.append(series)

//            tableView.reloadData()
        }
//
//          var series: Series? {
//              didSet {
////                  updateViews()
//              }
//          }
          
//          private func updateViews() {
//              guard let series = series else { return }
//
//              seriesOnListLabel.text = series.title
//          }
          

       // MARK: - Table view data source
    
        func tableView(_ tableView: UITableView, numberofRowsInSection section: Int) -> Int {
            return seriesController.series.count
        }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SeriesOnListCell", for: indexPath) as? WatchListTableViewCell else { return UITableViewCell()}

            let seriesOnList = seriesController.series[indexPath.row]
            cell.series = [seriesOnList]
          

            return cell
        }
//        // MARK: - Navigation
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "WatchListShowSegue" {
            guard let watchListVC = segue.destination as? AddSeriesViewController else { return }
            watchListVC.seriesController = seriesController
        }

}
}
