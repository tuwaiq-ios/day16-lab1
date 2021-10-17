//
//  Data.swift
//  myProjects
//
//  Created by ibrahim asiri on 11/03/1443 AH.
//

import Foundation

struct Restaurant{
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

let restaurants = [
    Restaurant(
    name: "مايسترو",
    type: "بيتزا",
    state: "مفتوح",
    rating: 4,
    logo: "maestro2",
    foods: [Food(
        name: "بيتزا-مشوي", image: "maestro2", price: 35),
            Food(
        name: "بتزا-خضار", image: "maestro3", price: 30)]),
    Restaurant(
    name: "هرفي",
    type: "وجبات-سريعة",
    state: "مغلق",
    rating: 3,
    logo: "hrfi",
    foods: [Food(
        name: "بروستد", image: "hrfi2", price: 34.5),
            Food(
        name: "وجبة-دجاج", image: "hrfi3", price: 24)]),
    Restaurant(
    name: "ون-منت",
    type: "مشاوي",
    state: "مفتوح",
    rating: 5,
    logo: "one",
    foods: [Food(
        name: "مشكل-مشاوي", image: "one2", price: 35)]),
    Restaurant(
    name: "عود هلم",
    type: "مندي",
    state: "مفتوح",
    rating: 5,
    logo: "hlm",
    foods: [Food(
        name: "نصف ذبيحة", image: "bn1", price: 550)])
]

//dictionary definition
var counter: [String: Int] = [:]
