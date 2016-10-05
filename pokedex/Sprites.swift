//
//  Sprites.swift
//  pokedex
//
//  Created by Daniel Ra on 7/15/16.
//  Copyright © 2016 Daniel Ra. All rights reserved.
//

import Foundation

class Sprites {
        var front_default: String
        init(dictionary: NSDictionary) {
            front_default = dictionary.valueForKey("front_default") as! String
        }
}