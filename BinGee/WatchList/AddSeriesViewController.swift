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
    
    @IBOutlet weak var addSeriesTextField: UITextField!
    @IBOutlet weak var numberOfSeasonsTextField: UITextField!
    
    
    var delegate: SeriesAddedDelegate?
    
    let seriesController = SeriesController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
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
