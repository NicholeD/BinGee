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
    var seriesOnList: [Series] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func addSeries(_ sender: Any){
        
    }
    func seriesWasAdded(_ series: Series) {
            seriesOnList.append(series)
    //        tableView.reloadData()
        }

          
          
          var series: Series? {
              didSet {
//                  updateViews()
              }
          }
          
//          private func updateViews() {
//              guard let series = series else { return }
//
//              seriesOnListLabel.text = series.title
//          }
          
      
         
       // MARK: - Table view data source
    
//        func tableView(_ tableView: UITableView, numberofRowsInSection section: Int) -> Int {
//            return seriesOnList.count
//        }
//
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SeriesOnListCell", for: indexPath) as? WatchListTableViewCell else { return UITableViewCell() }
//
//            let series = seriesOnList[indexPath.row]
//            cell.series = series
//
//            return cell
//        }
//        // MARK: - Navigation
//
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//               if segue.identifier == "AddSeriesSegue" {
//                   guard let addSeriesVC = segue.destination as? AddSeriesViewController else { return }
//                       addSeriesVC.delegate = self
//
//               }
//           }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
