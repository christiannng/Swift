//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        let diceIndex1 = Int.random(in: 0..<diceImages.count)
        let diceIndex2 = Int.random(in: 0..<diceImages.count)
        
        diceImageView1.image = diceImages[diceIndex1]
        diceImageView2.image = diceImages[diceIndex2]
        
        
//        switch number1 {
//            case 1: diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
//            case 2: diceImageView1.image = #imageLiteral(resourceName: "DiceTwo")
//            case 3: diceImageView1.image = #imageLiteral(resourceName: "DiceThree")
//            case 4: diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//            case 5: diceImageView1.image = #imageLiteral(resourceName: "DiceFive")
//            default: diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//        }
//
//        switch number2 {
//            case 1: diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
//            case 2: diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
//            case 3: diceImageView2.image = #imageLiteral(resourceName: "DiceThree")
//            case 4: diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
//            case 5: diceImageView2.image = #imageLiteral(resourceName: "DiceFive")
//            default: diceImageView2.image = #imageLiteral(resourceName: "DiceSix")
//        }
        
    }
    
}

