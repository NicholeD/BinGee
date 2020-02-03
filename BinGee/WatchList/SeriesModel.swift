//
//  SeriesModel.swift
//  BinGee
//
//  Created by Nichole Davidson on 2/3/20.
//  Copyright © 2020 Nichole Davidson. All rights reserved.
//

import Foundation

class Series {
    var title: String
    var seasons: Int
    var seen: Bool
}

class SeriesSeason {
    var seasonNumber: Int
    var episodeCount: Int
    var seen: Bool
}

class Episode {
    var episodeNumber: Int
    var seen: Bool
}
