//
//  Pokemon.swift
//  pokedex
//
//  Created by Daniel Ra on 7/15/16.
//  Copyright © 2016 Daniel Ra. All rights reserved.
//

import Foundation

class Pokemon {
    var url: String
    var name: String
    init(dictionary: NSDictionary) {
        url = dictionary.valueForKey("url") as! String
        name = dictionary.valueForKey("name") as! String
    }
}