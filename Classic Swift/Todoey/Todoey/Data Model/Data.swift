//
//  Data.swift
//  Todoey
//
//  Created by Christian Nguyen on 2019-12-18.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    //dynamic = monitor for changes at runtime. Let Realm dynamically update the database at runtime
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}

