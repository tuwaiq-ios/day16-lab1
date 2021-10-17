//
//  Data.swift
//  Sara.jahez
//
//  Created by SARA SAUD on 3/4/1443 AH.
//

import UIKit
struct Rest {
    let name: String
    let type: String
    let rating: String
    let state: String
    let logo: String
    let foods: Array<Food>
}
struct Food {
    let name: String
    let image: String
    let price: Double
}
//counter
var counter: [String:Int]=[:]

let restList = [
            Rest(name: "ALTAZAJ",
                 type: "Arabic",
                 rating: "⭐️⭐️" ,
                 state: "Open",
                 logo: "altazaj",
                 foods: [Food(name: "Checin",
                             image: "tazaj1",
                             price: 20),
                         Food(name: "Daynamit",
                            image: "tazaj3",
                            price: 25),
                         Food(name: "Cresby Rool",
                            image: "tazaj2",
                            price: 12)]),
            Rest(name: "I'm Hungry",
                type: "burger",
                rating: "⭐️⭐️⭐️" ,
                state: "Open",
                logo: "imhungry",
                foods: [Food(name: "burger",
                             image: "imhungry1",
                             price: 20),
                        Food(name: "kids meal",
                             image: "imhungry2",
                             price: 30),
                        Food(name: "icecream",
                             image: "imhungry3",
                             price: 12)]),
            Rest(name: "ANJILINA",
                type: "French Food",
                rating: "⭐️⭐️⭐️⭐️" ,
                state: "Open",
                logo: "anjili",
                foods: [Food(name: "aclir",
                             image: "anjli",
                             price: 40),
                        Food(name: "coffiee",
                             image: "anjli2",
                             price: 30),
                        Food(name: "Frute",
                             image: "anjli1",
                             price: 35)]),
            Rest(name: "ALBAIK",
                type: "FastFood",
                rating: "⭐️⭐️⭐️" ,
                state: "Open",
                logo: "albaik",
                foods: [Food(name: "shrimp",
                             image: "baik1",
                             price: 20),
                        Food(name: "chicen",
                             image: "baik2",
                             price: 22),
                        Food(name: "Corn",
                             image: "baik3",
                             price: 15)])
]
    
       
