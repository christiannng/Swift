//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Christian Nguyen on 2019-12-14.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    
    let fromCurrency: String
    let toCurrency: String
    let avgPrice: Double
    
    init(from: String, to: String, price: Double) {
        fromCurrency = from
        toCurrency = to
        avgPrice = price
    }
    
    func getAvgPrice() -> String {
        return df2so(avgPrice)
    }
    
    func df2so(_ price: Double) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.groupingSeparator = ","
        numberFormatter.groupingSize = 3
        numberFormatter.usesGroupingSeparator = true
        numberFormatter.decimalSeparator = "."
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter.string(from: price as NSNumber)!
    }
    
}


