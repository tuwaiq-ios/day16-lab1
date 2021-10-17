//
//  jahezData.swift
//  day 16
//
//  Created by alanood on 11/03/1443 AH.
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

struct Food{
    let name: String
    let image: String
    let price: Double
}


let restList = [
    Rest(
        name:"حاشي و شواية",
        type: "عربي",
        state: "مفتوح",
        rating: 4,
        logo: "g",
        foods: [
            
            Food(
                name: "حاشي و شواية",
                image: "شواية دجاج",
                price: 28.98
            )
        ]
    ),
    Rest(
     name: "البرجر الطازج",
       type: "وجبات سريعة",
       state: "مفتوح",
       rating: 5,
       logo: "bur",
       foods: [
         
         Food(name: "البرجر الطازج",
              image: "crispy",
              price: 25.00
             )
         ]
     ),
]
  

var counter:[String:Int]=[:]

