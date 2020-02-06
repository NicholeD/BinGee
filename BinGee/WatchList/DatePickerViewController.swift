//
//  DatePickerViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/6/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    var seriesController: SeriesController?
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var submitDateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard datePicker != nil else { return }
        
    }
    

    @IBAction func submitDateButtonTapped(_ sender: Any) {
        
       navigationController?.popViewController(animated: true)
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
