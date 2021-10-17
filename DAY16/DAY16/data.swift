//
//  data.swift
//  DAY16
//
//  Created by Kholod Sultan on 11/03/1443 AH.
//

import UIKit


struct Rest {
    let name: String
    let type: String
    let state: String
    let rating: Int
    let logo: String
    let foods: Array<Food>
}

struct Food {
   
    let name: String
    let image: String
    let price: Double
    
}
let restList = [
    Rest(name: "broccoli",
         type: "italain food",
         state: "open",
         rating: 4,
         logo: "broc logo",
         foods: [Food(name: "past", image: "broc1", price: 15.3),Food(name: "fuchini", image: "broc2", price: 15.22),Food(name: "mixed", image: "broc3", price: 20.3)]),
    
    Rest(name: "burger king", type: "fast food", state: "open", rating:3 , logo: "bur logo", foods: [Food(name: "burger chicken", image: "bur1", price: 15.23),
                                                                                                     Food(name: "beef burger", image: "bur2", price: 17.23),Food(name: "grilled burger", image: "bur3", price: 16.7)
    ]),
    Rest(name: "mystro", type: "pizza", state: "open", rating: 4, logo: "myst logo", foods: [Food(name: "vegetabel pizza", image: "pizza1", price: 18.32),
                                                                                             Food(name: "chicken pizza", image: "pizza3", price: 16.23),Food(name: "beef pizza", image: "pizza2", price: 20.31)
    ]),
    Rest(name: "shawermar", type: "shawerma", state: "open", rating: 3, logo: "shaw logo", foods:[Food(name: "shawerma arbo", image: "shaw1", price: 14.24),Food(name: "shawerma", image: "shaw2", price: 16.5), Food(name: "grand wes", image: "shaw3", price: 14.56)
    ])



]
var vistorsCounter:[String:Int] = [:]

