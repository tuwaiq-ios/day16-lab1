//
//  Data.swift
//  day16
//
//  Created by Amal on 11/03/1443 AH.
//

import UIKit

struct Rest {
    let name : String
    let type : String
    let State : String
    let rating : Int
    let logo : String
    let foods : Array<Food>
}

struct Food {
   let name : String
   let image : String
    let price : Double
}

var restList = [
Rest(name:"وقت العصير", type:"مشروبات", State: "مفتوح", rating: 3, logo: "عصير", foods:[Food(name:"عصير كوكتيل", image:"كوكتيل", price: 12.5) ,
           Food(name:"عصير تفاح", image:"تفاح", price: 12.5) ,
           Food(name:"عصير رمان", image:"رمان", price: 12.5)]),

Rest(name:"البيك", type:"مآكولات سريعه", State: "مفتوح", rating: 4, logo: "البيك", foods:[Food(name:" مسحب البيك", image:"مسحب", price: 16.0),
           Food(name:"شاورماالبيك", image:"شاورما", price: 16.5),
           Food(name:"بروست البيك", image:"بروست", price: 16.0)]),

Rest(name:"بيتزا هت", type:"مآكولات سريعه", State: "مفتوح", rating: 3, logo: "pizza", foods:[Food(name:"بيتزا خضار", image:"خضار", price: 20.5),
           Food(name:"بيتزا دايناميت", image:"دايناميت", price: 22.5),
           Food(name:"بيتزا رانش", image:"رانش", price: 19.5)]),

Rest(name:"سمك بحري", type:"مآكولات بحريه", State: "مفتوح", rating: 3, logo: "سمك", foods:[Food(name:"سمك مشوي", image:"مشوي", price: 120.5),
           Food(name:"سمك مقلي", image:"مقلي", price: 122.5),
           Food(name:"سمك فيليه", image:"فيليه", price: 119.5)])
]


var counter : [String:Int] = [:]
