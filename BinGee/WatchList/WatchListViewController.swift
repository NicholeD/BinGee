//
//  WatchListViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class WatchListViewController: UIViewController, SeriesAddedDelegate {
    
    
    
    
    var seriesOnList: [Series] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func seriesWasAdded(_ series: Series) {
        seriesOnList.append(series)
//        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberofRowsInSection section: Int) -> Int {
        return seriesOnList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SeriesOnListCell", for: indexPath) as? WatchListTableViewCell else { return UITableViewCell() }
        
        let series = seriesOnList[indexPath.row]
        cell.series = series
        
        return cell
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "AddSeriesSegue" {
               guard let addSeriesVC = segue.destination as? AddSeriesViewController else { return }
                   addSeriesVC.delegate = self
           } 
       }

}
