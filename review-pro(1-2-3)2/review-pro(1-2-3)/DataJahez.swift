//
//  DataJahez.swift
//  review-pro(1-2-3)
//
//  Created by Ahmed Assiri on 11/03/1443 AH.
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
    let price: Double
}

let restList = [
Rest(name: "البيك",
     type: "برست",
     state: "مفتوح",
     rating: 4,
     logo: "BB",
     foods: [
        Food(name: "مسحب",
             image: "AA",
             price: 15.99)]),

Rest(name: "فرن الضيعه",
     type: "بيتزا",
     state: "مغلق",
     rating: 3,
     logo: "CC",
     foods: [
     Food(name: "زعتر",
          image: "DD",
          price: 10.99)
     ])
]


