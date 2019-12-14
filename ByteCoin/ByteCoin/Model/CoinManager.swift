//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(_ coinManager: CoinManager, coinModel: CoinModel)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["VND", "AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    let btcURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    
    var delegate: CoinManagerDelegate?
    
    func getCoinPrice(for currency: String) {
        print(currency)
    }
    
    func fetchCurrency(_ currency: String) {
        let url = "\(btcURL)\(currency)"
        performRequest(with: url)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                }
                
                if let safeData = data {
                    if let conversionResult = self.parseJSON(safeData) {
                        self.delegate?.didUpdateCoin(self, coinModel: conversionResult)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ conversionData: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(ConversionData.self, from: conversionData)
            
            let avgDayPrice = decodedData.averages.day
            let displaceSymbol = decodedData.display_symbol.components(separatedBy: "-")
            
            
            let coinModel = CoinModel(from: displaceSymbol[1], to: displaceSymbol[0], price: avgDayPrice)
            
            
            return coinModel
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
    
    
    
}
