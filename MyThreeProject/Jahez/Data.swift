//
//  File.swift
//  Day16
//
//  Created by sara al zhrani on 11/03/1443 AH.
//

//
//  Data.swift
//  marsool
//
//  Created by sara al zhrani on 04/03/1443 AH.
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
    let price : Double
}
let restlist = [Rest(name: "Albaik",
                 type: "fast food",
                 state: "open",
                 rating: 3,
                 logo: "Albaik",
                 foods: [Food(name: "moshb", image: "moshab", price: 26.99),
                         
                         Food(name: "broasted", image: "broasted", price: 36.99)
                 ]),
                
                Rest(name: "the cheesecake Factory",
                     type: " US",
                     state: "open",
                     rating: 5,
                     logo: "cheesecakefactory",
                     foods: [Food(name: "Fettuccine", image: "Fettuccine", price: 77.00),
                             Food(name: "Fish tacos", image: "Fish tacos", price: 88.00)
                                 ]) ,
                Rest(name: "Friday's",
                     type: " US",
                     state: "open",
                     rating: 5,
                     logo: "Friday's",
                     foods: [Food(name: "Friday's Twister", image: "Friday's Twister", price: 87.00),
                             Food(name: "steak", image: "steak", price: 180.00)
                                 ]) ,
                Rest(name: "Real burger",
                     type: " burger",
                     state: "open",
                     rating: 4,
                     logo: "Real burger",
                     foods: [Food(name: "beef burger", image: "beef burger", price:46.00),
                             Food(name: "chiken burger", image: "chiken burger", price: 50.00)
                                 ]) ,
]


var count : [String:Int] = [: ]










