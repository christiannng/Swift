//
//  Category.swift
//  Todoey
//
//  Created by Christian Nguyen on 2019-12-18.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var hexColor: String = ""
    
    //Create relationship - forward relationship
    let items = List<Item>()
    
}
