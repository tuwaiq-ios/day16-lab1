//
//  Data.swift
//  day16
//
//  Created by PC on 11/03/1443 AH.
//

import Foundation
import UIKit


struct Rest {
    let name: String
    let type: String
    let State: String
    let rating: Int
    let logo: String
    
    let Foods: Array<Food>
}

struct Food {
    let name: String
    let image: String
    let price: Double
}


let restList = [ Rest(name: "فرن الضيعة",
                 type: "مخبوزات",
                 State: "مفتوح",
                 rating: 4,
                 logo: "fr22",
                 Foods: [
                    Food(name: "شاورما", image: "ff1", price: 5.99),
                    
                 ]
),
                 Rest(name:"الطازج",
                 type: "وجبات سريعه",
                 State: "مفتوح",
                 rating: 4,
                 logo: "taz1",
                 Foods: [
                    Food(name: "roll", image:"rol1", price: 5.99),
                    
                 ]
)
]
var counter : [String : Int] = [:]

