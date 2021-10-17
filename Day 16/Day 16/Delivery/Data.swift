//
//  Data.swift
//  Day 16
//
//  Created by Sara M on 11/03/1443 AH.
//


import UIKit


var counter:[String:Int] = [:]


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
    Rest(
        name: "سينابون",
        type: "حلويات",
        state: "مفتوح",
        rating: 4,
        logo:  "سينابون لوقو",
        foods: [
            Food(
                name: "سينابون كلاسيك",
                image: "سينابون كلاسيك",
                price: 15.0
            ),
            Food(
                name: "سينابون بيكان بون",
                image: "سينابون",
                price: 22.0
            )
        ]
    ),
    Rest(
        name: "باسكن روبنز",
        type: "حلويات",
        state: "مفتوح",
        rating: 3,
        logo: "باسكن لوقو",
        foods:  [
            Food (
                name: "مغرفة العملاق صنداي",
                image: "مغرفة العملاق",
                price: 19.0
            ),
            Food (
                name: "ستروبيري تشيز كيك",
                image: "ستروبيري",
                price: 14.0
            )
        ]
    ),
    Rest(
        name: "ديب ان فلاي",
        type: "حلويات",
        state: "مفتوح",
        rating: 4,
        logo: "ديب فلاي",
        foods:[
            Food(
                name: "سوشي كريب",
                image: "سوشي كريب",
                price: 34.0
            ),
            Food(
                name: "هرم ديب ان فلاي",
                image: "هرم",
                price: 40.0
            )
        ]
    )
]
