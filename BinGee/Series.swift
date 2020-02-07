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
    var totalEpisodes: Int
    var scheduleDate: Date
    var seen: Bool
    
    init(title: String, seasons: Int, totalEpisodes: Int, scheduleDate: Date, seen: Bool = false) {
        self.title = title
        self.seasons = seasons
        self.totalEpisodes = totalEpisodes
        self.scheduleDate = scheduleDate
        self.seen = seen
    }
}

//class SeriesSeason: Codable {
//    var seasonNumber: Int
//    var episodeCount: Int
//    var seen: Bool = false
//
//    init(seasonNumber: Int, episodeCount: Int) {
//    self.seasonNumber = seasonNumber
//    self.episodeCount = episodeCount
//    }
//}
//
//class Episode: Codable {
//    var episodeNumber: Int
//    var seen: Bool = false
//
//    init(episodeNumber: Int) {
//    self.episodeNumber = episodeNumber
//    }

