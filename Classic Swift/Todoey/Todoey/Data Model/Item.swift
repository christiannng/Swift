//
//  Item.swift
//  Todoey
//
//  Created by Christian Nguyen on 2019-12-18.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var isDone: Bool = false
    @objc dynamic var dateCreated: Date?
    
    //link to items attribute in Item class - Reverse category
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
