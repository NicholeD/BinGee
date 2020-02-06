//
//  HomePageViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

   
    @IBOutlet weak var watchListButton: UIButton!
    @IBOutlet weak var scheduleButton: UIButton!
    
    var seriesController = SeriesController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func watchListButtonTapped(_ sender: Any) {
        
         navigationController?.popViewController(animated: true)
        
        
    }
    
    @IBAction func scheduleButtonTapped(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "WatchListShowSegue" {
            guard let watchListVC = segue.destination as? WatchListTableViewController else { return }
            watchListVC.seriesController = seriesController
        }
    }
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//           // #warning Incomplete implementation, return the number of rows
//           return 3
//       }
//
//       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//           if indexPath.section == 0 {
//           let cell = tableView.dequeueReusableCell(withIdentifier: "Watch List", for: indexPath)
//
//           }
//       }
    
    // MARK: - Navigation

   
}
