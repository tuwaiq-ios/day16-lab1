//
//  Data.swift
//  Day16Projects
//
//  Created by HANAN on 11/03/1443 AH.
//


import UIKit

struct Rest {
    let name : String
    let type : String
    let state : String
    let rating : Int
    let logo : String
    let foods : Array<Food>
}

struct Food {
    let name: String
    let image: String
    let price: Double
}






let restList = [
    
Rest(name: "happy fish",type: "sea food",state: "open",rating: 5,logo: "fi",
     foods: [Food(name: "frish fish",image:"sl",price: 5),
             Food (name: "frish fish",image:"f2",price: 8),
             Food (name: "frish fish",image:"f3",price: 9) ] ),

Rest(name: "happy frute",type: "healthy food",state: "open",rating: 5,logo: "hf",
    foods: [Food(name: "frute cream",image:"hff",price: 5),
            Food(name: "frute salad ",image:"fr2",price: 3),
            Food(name: "frute hearts",image:"fr3",price: 5) ] ),

Rest(name: "happiniss salad ",type: "healthy food",state: "open",rating: 5,logo: "ls",
     
    foods: [Food(name: "motley salad",image:"ns",price: 6),
            Food(name: "runch salad ",image:"ms",price: 3),
            Food(name: "green salad",image:"mms",price: 5) ] ),

Rest(name: "happiniss drink",type: "refreshing drink",state: "open",rating: 5,logo: "ld",
    foods: [Food(name: "Strawberry juice",image:"sj",price: 5),
            Food(name: "mango juice ",image:"mj",price: 3),
            Food(name: "pineapple",image:"kj",price: 5) ] ),
    ]

    var counter :[String : Int] = [:]
