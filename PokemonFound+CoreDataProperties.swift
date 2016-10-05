//
//  PokemonFound+CoreDataProperties.swift
//  pokedex
//
//  Created by Phoukham Vongmixay on 7/20/16.
//  Copyright © 2016 Yung Kim. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension PokemonFound {

    @NSManaged var name: String?
    @NSManaged var latitude: NSNumber?
    @NSManaged var longitude: NSNumber?
    @NSManaged var cP: NSNumber?

}
