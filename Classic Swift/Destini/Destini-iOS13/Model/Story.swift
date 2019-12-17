//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    
    var title: String
    var choice1: String
    var choice2: String
    var choice1Destination: Int = -1
    var choice2Destination: Int = -1
    
    init(title t: String, choice1 c1: String, choice1Destination c1d: Int, choice2 c2: String, choice2Destination c2d: Int){
        title = t
        choice1 = c1
        choice1Destination = c1d
        choice2 = c2
        choice2Destination = c2d
    }
}
