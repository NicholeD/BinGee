//
//  AddSeriesViewController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import UIKit

protocol SeriesAddedDelegate {
    
    func seriesWasAdded(_ series: Series)
}

class AddSeriesViewController: UIViewController {
    
    var series: [Series] = []
    
    @IBOutlet weak var addSeriesTextField: UITextField!
    
    @IBOutlet weak var numberOfSeasonsTextField: UITextField!
    
    var delegate: SeriesAddedDelegate?
    
    let seriesController = SeriesController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addSeriesTapped(_ sender: Any) {
        guard let title = addSeriesTextField.text,
            let seasonsString = numberOfSeasonsTextField.text,
            let seasons = Int(seasonsString) else { return }
        
        let series = Series(title: title, seasons: seasons)
        
        seriesController.addSeriesTapped(with: title, seasons: seasons)
        
        delegate?.seriesWasAdded(series)
    
    if let navController = self.navigationController {
        navController.popViewController(animated: true)
    }
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

extension AddSeriesViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            switch textField {
            case addSeriesTextField:
                textField.resignFirstResponder()
            case numberOfSeasonsTextField:
                textField.resignFirstResponder()
            default:
                textField.resignFirstResponder()
            }
        }
        return false
    }
}
