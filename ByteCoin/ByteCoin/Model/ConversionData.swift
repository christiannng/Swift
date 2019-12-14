//
//  ConversionData.swift
//  ByteCoin
//
//  Created by Christian Nguyen on 2019-12-14.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct ConversionData: Codable {
    let averages: Averages
    let display_symbol: String
}

struct Averages: Codable {
    let day: Double
}
