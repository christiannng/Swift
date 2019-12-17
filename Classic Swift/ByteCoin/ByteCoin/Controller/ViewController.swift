//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bitcoinLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        coinManager.delegate = self
        
        coinManager.fetchCurrency(coinManager.currencyArray[0])
        
    }
    
    
    
}

//MARK: - UIPickerViewDataSource
extension ViewController: UIPickerViewDataSource {
    // How many columns we want in our picker.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // How many rows the picker should have
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
}

//MARK: - UIPickerViewDelegate
extension ViewController: UIPickerViewDelegate {
    
    // What is the contents (text) of a given row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    
    // Get called every single time the user scroll the picker.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        coinManager.fetchCurrency(coinManager.currencyArray[row])
        
    }
}

//MARK: - CoinManagerDelegate
extension ViewController: CoinManagerDelegate {
    func didFailWithError(error: Error) {
        print("Error")
    }
    
    func didUpdateCoin(_ coinManager: CoinManager, coinModel: CoinModel) {
        
        DispatchQueue.main.async {
            self.bitcoinLabel.text = coinModel.getAvgPrice()
            self.currencyLabel.text = coinModel.fromCurrency
        }
        
    }
}

