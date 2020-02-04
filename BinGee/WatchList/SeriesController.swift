//
//  SeriesController.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation

class SeriesController {
    
    init() {
        loadFromPersistentStore()
    }
    var series: [Series] = []
    
    
    func addSeriesTapped(with title: String, seasons: Int) {
        let seriesName = Series(title: title, seasons: seasons)
        
        series.append(seriesName)
        
        saveToPersistentStore()
          
        }
    
    var seriesListURL: URL? {
        
        let fileManager = FileManager.default
        
        guard let documentsDir = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        
        let seriesURL = documentsDir.appendingPathComponent("SeriesList.plist")
        
        return seriesURL
    }

    func saveToPersistentStore() {
        
        guard let fileURL = seriesListURL else { return }
        
        let encoder = PropertyListEncoder()
        
        do {
            
            let seriesData = try encoder.encode(series)
            try seriesData.write(to: fileURL)
            
        } catch {
            print("Error encoding series array: \(error)")
           
        }
     }
     
        func loadFromPersistentStore() {
            
            do {
                guard let fileURL = seriesListURL else { return }
                let seriesData = try Data(contentsOf: fileURL)
                let decoder = PropertyListDecoder()
                let decodedSeries = try decoder.decode([Series].self, from: seriesData)
                self.series = decodedSeries
            } catch {
                print("Error decoding series: \(error)")
            }
            
        }
    func createSeries(with title: String, seasons: Int) {
        
        let seriesCreated = Series(title: title, seasons: seasons)
        
        series.append(seriesCreated)
        
        saveToPersistentStore()
    }
    
    // need to create a deleteSeries func and updateHasBeenSeen func
}

