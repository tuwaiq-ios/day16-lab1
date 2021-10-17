//
//  Data.swift
//  Day16-Project-Afnan
//
//  Created by Fno Khalid on 11/03/1443 AH.
//

import UIKit


struct Rest {
    
    let name: String
    let type: String
    let rating: Int
    let state: String
    let logo: String
    let foods: Array<Food>
}

struct Food {
    
    let name: String
    let image: String
    let price: Double
    
}

let restList = [
    Rest(
        name: "الطازج",
        type: "وجبات سريعة",
        rating: 5,
        state: "Open",
        logo: "Rest.1",
        foods: [
            Food(name: "كرسبي رول", image: "Tazej.1", price: 18),
            Food(name: "بطاطس مقلي", image: "Tazej.2", price: 10),
            Food(name: "فروج مشوي", image: "Tazej.3", price: 20),
            Food(name: "بروست", image: "Tazej.4", price: 17),
        ]
    ),
        
     Rest(
            name: "فرن الضيعة",
            type: "مخبوزات",
            rating: 4,
            state: "Open",
            logo: "Rest.2",
            foods: [
                Food(name: "عيش باللحم", image: "Furn.1", price: 12),
                Food(name: "بيتزا خضار", image: "Furn.2", price: 22),
                Food(name: "بيتزا رانش الدجاج", image: "Furn.3", price: 25),
                Food(name: "ميني بيتزا", image: "Furn.4", price: 18),
        ]
    ),
    
    Rest(
           name: "شاورمر",
           type: "وجبات سريعة",
           rating: 3,
           state: "Open",
           logo: "Rest.3",
           foods: [
               Food(name: "رقاقوز", image: "shawrma.1", price: 18),
               Food(name: "شاورما عربي", image: "shawrma.2", price: 15),
               Food(name: "شاورما الراهية", image: "shawrma.3", price: 18),
               Food(name: "فرايز دجاج", image: "shawrma.4", price: 12),
       ]
   ),
    
    Rest(
           name: "صب واي",
           type: "وجبات سريعة",
           rating: 4,
           state: "Open",
           logo: "Rest.4",
           foods: [
               Food(name: "شيباتا بانيني الفاخرة", image: "sub.1", price: 18),
               Food(name: "ساندوتش تونة", image: "sub.2", price: 18),
               Food(name: "ساندوتش دجاج", image: "sub.3", price: 18),
               Food(name: "ساندوتش دجاج مشوي", image: "sub.4", price: 18),
       ]
   ),
    
]


