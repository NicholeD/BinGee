//
//  HomeTilesTableViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/4/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class HomeTilesTableViewController: UITableViewController {

    @IBOutlet weak var homeTilesTableViewCell: UITableViewCell!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
