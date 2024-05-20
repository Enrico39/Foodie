//
//  Food.swift
//  GhostBugstersApp
//
//  Created by Ricardo Jorge Rodriguez Trevino on 20/10/23.
//

import Foundation
import SwiftData

@Model
class Food {
    @Attribute(. unique) var id: Int
    var name: String
    var type: String
    var image: String
    var isFav: Bool
    
    var preferenceTypes: [String]
    
    var desc: String
    var placeName: String
    var latitude: Double
    var longitude: Double
    var couriosity: String
    
    var isDrink: Bool = false
    var isBreakfast: Bool = false
    var isMeal: Bool = false
    var isSweet: Bool = false
    var isSalt: Bool = false
    var isWow: Bool = true
    
    init(id: Int, name: String, type: String, image: String, isFav: Bool, preferenceTypes: [String], desc: String, placeName: String, latitude: Double, longitude: Double, couriosity: String, isDrink: Bool, isBreakfast: Bool, isMeal: Bool, isSweet: Bool, isSalt: Bool, isWow: Bool) {
        self.id = id
        self.name = name
        self.type = type
        self.image = image
        self.isFav = isFav
        self.preferenceTypes = preferenceTypes
        self.desc = desc
        self.placeName = placeName
        self.latitude = latitude
        self.longitude = longitude
        self.couriosity = couriosity
        self.isDrink = isDrink
        self.isBreakfast = isBreakfast
        self.isMeal = isMeal
        self.isSweet = isSweet
        self.isSalt = isSalt
        self.isWow = isWow
    }
}

