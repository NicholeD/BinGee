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
    
    func addSeriesTapped(with title: String, seasons: Int, totalEpisodes: Int, scheduleDate: Date) {
        let seriesName = Series(title: title, seasons: seasons, totalEpisodes: totalEpisodes, scheduleDate: scheduleDate)
        
        series.append(seriesName)
        
        saveToPersistentStore()
          
        }
    
    func createSeries(with title: String, seasons: Int, totalEpisodes: Int, scheduleDate: Date) {

           let seriesCreated = Series(title: title, seasons: seasons, totalEpisodes: totalEpisodes, scheduleDate: scheduleDate)

           series.append(seriesCreated)

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
}

