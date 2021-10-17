//
//  Data.swift
//  jahez 9
//
//  Created by MacBook on 04/03/1443 AH.
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
                  Rest(name:" البيك",
                      type: "وجبات سريعة",
                      state:"مفتوح",
                      rating: 3,
                      logo:"beak",
                      foods: [
                      Food (name: "بروست",
                            image: "B-c1",
                            price: 25)]),
                  Rest(name: "استنبول",
                       type: "وجبات رئيسية",
                       state: "مفتوح",
                       rating: 4,
                       logo: "Esta",
                       foods: [
                        Food(name: "شيش طاووق",
                             image: "E-sh",
                             price: 40)]),
                  Rest(name: "برقر كنق",
                       type: "وجبات سريعة",
                       state: "مفتوح",
                       rating: 2,
                       logo: "Bur",
                       foods: [
                        Food(name:"برقر لحم",
                             image: "B-w",
                             price: 28)]),
                  Rest(name: "شاورما",
                       type: "وجبات رئيسية",
                       state: "مفتوح",
                       rating: 4,
                       logo: "Shwrm",
                       foods: [
                        Food(name:"شاورما عربي",
                             image: "Sh-a",
                             price: 35)])
                //ريست عبارة عن اوبكت من نوع ريست داخل مصفوفة
               ]
var counter: [String:Int] = [:]


                  
