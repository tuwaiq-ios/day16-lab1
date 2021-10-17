//
//  File.swift
//  Abdulaziz.Projects
//
//  Created by Abdulaziz on 11/03/1443 AH.
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
    let prise: Double
}

    
let restlist = [
    
    Rest(name: "مايسترو",
         type: "بيتزا",
         state: "مفتوح",
         rating: 3,
         logo: "logomaestro",
         foods: [Food(name: "بيتزا", image: "images-3", prise: 22.99)]),

    Rest(name: "ماكدونالدز",
         type: "برجر",
         state: "مفتوح",
         rating: 4,
         logo: "McDonald's",
         foods: [Food(name: "ماك تيشكن", image: "McChicken", prise: 25.99)]),
         
    Rest(name: "شاورمر",
         type: "شاورما",
         state: "مفتوح",
         rating: 4,
         logo: "ShawarmerLogo",
         foods: [Food(name: "ساندوتش", image: "shawerma", prise: 18.50)]),
    
    Rest(name: "البيك",
         type: "دجاج",
         state: "مفتوح",
         rating: 5,
         logo: "Albaiklogo",
         foods: [Food(name: "مسحب", image: "7piecenugget", prise: 12.5)]),
    
    Rest(name: "برجر كينق",
         type: "برجر",
         state: "مفتوح",
         rating: 3,
         logo: "Burger-King-Logo",
         foods: [Food(name: "برجر لحم", image: "BURGERS", prise: 26.50)])


]

var coun : [String:Int] =  [:]
