//
//  PostData.swift
//  Reddit for Hacker
//
//  Created by Christian Nguyen on 2019-12-17.
//  Copyright © 2019 Christian McAwesome. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}


//Must have an id variable to use Identifiable -> to be used in List()
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
}
