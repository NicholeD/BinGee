//
//  SeriesModel.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation

class Series: Codable {
    var title: String
    var seasons: Int
    var totalEpisodes: Int = 0
    var seen: Bool = false
    
    init(title: String, seasons: Int) {
        self.title = title
        self.seasons = seasons
    }
}

class SeriesSeason: Codable {
    var seasonNumber: Int
    var episodeCount: Int
    var seen: Bool = false
    
    init(seasonNumber: Int, episodeCount: Int) {
    self.seasonNumber = seasonNumber
    self.episodeCount = episodeCount
    }
}

class Episode: Codable {
    var episodeNumber: Int
    var seen: Bool = false
    
    init(episodeNumber: Int) {
    self.episodeNumber = episodeNumber
    }
}
