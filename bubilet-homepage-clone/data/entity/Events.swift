//
//  Events.swift
//  bubilet-homepage-clone
//
//  Created by Esra Türk on 2.10.2024.
//

import Foundation

class Events {
    var id:Int?
    var photo:String?
    var name:String?
    var place:String?
    var date:String?
    var price:Double?
    var sittingArea:Bool?
    
    init(id: Int, photo:String, name: String, place: String, date: String, price: Double, sittingArea:Bool) {
        self.id = id
        self.photo = photo
        self.name = name
        self.place = place
        self.date = date
        self.price = price
        self.sittingArea = sittingArea
    }
    
}
