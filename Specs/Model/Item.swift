//
//  Item.swift
//  Specs
//
//  Created by John Srishti on 19/12/21.
//

import SwiftUI

//item model and sample Data

struct Item:Identifiable {
    var id = UUID().uuidString
    var title : String
    var subTitle : String
    var price: String
    var rating: String
    var Image:String
}
//note both image and color name are same...
var items = [
    Item(title: "Vincent Chase", subTitle: "Black Full Rim", price: "$36", rating: "3.8", Image: "p1"),
    Item(title: "John Jacobs", subTitle: "Brown Tortose", price: "$45", rating: "4.9", Image: "p2"),
    Item(title: "Wood Black", subTitle: "Office Glass", price: "$84", rating: "34.2", Image: "p3"),
    Item(title: "Vu Abstract", subTitle: "Fashion U", price: "$65", rating: "3.5", Image: "p4")
]
