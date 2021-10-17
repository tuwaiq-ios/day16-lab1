//
//  Data.swift
//  Day16
//
//  Created by Me .. on 11/03/1443 AH.
//

import UIKit

struct Rest{
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
let restList = [Rest(
  name: "نواة",
  type: "مشروبات",
  state:"open",
  rating: 4,
  logo: "NN1",
                     
foods: [Food(
    name:"كابتشينو",
    image: "kabt1",
    price: 20),
        Food(
    name:"اسبريسو",
    image: "esp1",
    price: 12)]),
 
  Rest(
    name:"وقت العصير",
    type: "عصائر",
    state: "close",
    rating: 3,
    logo: "juc1",
    
foods: [Food(
    name: "عصير كوكتيل",
    image: "kokt",
    price: 15),
        
        Food(
    name: "عصير افوكادو",
    image: "avoc",
    price: 13 )
]

)
  ]

var counter: [String:Int] = [:]

