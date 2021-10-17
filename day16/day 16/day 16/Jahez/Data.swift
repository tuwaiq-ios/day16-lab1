//
//  Data.swift
//  day 16
//
//  Created by sally asiri on 11/03/1443 AH.
//


import UIKit

struct Rest {
    let name: String
    let type: String
    let state: String
    let rating: Int
    let  logo: String
    let foods: Array<Food>
}

struct Food {
    let name: String
    let image: String
    let price: Double
    
}



let restList = [ Rest (name: "مايسترو بيتزا",
                      type: "بيتزا",
                     state: "مفتوح",
                     rating: 3,
                     logo: "شعار مايسترو",
                     
                       foods: [
                        Food (name: "رانش الدجاج", image: "رانش الدجاج", price: 4.0),
                     Food (name: "كاساديا", image: "كاساديا", price: 3.0),
                        Food(name: "باربيكو", image: "باربيكو", price: 3.0)
                     ]
                       
                      ),
                 Rest (name: "هرفي",
                                      type: "برجر",
                                     state: "مغلق",
                                     rating: 3,
                                     logo: "شعار هرفي",
                                     
                                       foods: [
                                        Food (name: "راب الدجاج", image: "راب الدجاج", price: 4.0),
                                     Food (name: "دبل هرفي لحم", image: "دبل هرفي لحم", price: 3.0),
                                        Food(name: "تورتلا دجاج", image: "تورتلا دجاج", price: 3.0)
                                     ]
                                       
                                      ),
                 Rest (name: "ستار بكس",
                                      type: "مشروبات",
                                     state: "مفتوح",
                                     rating: 4,
                                     logo: "شعار ستار بكس",
                                     
                                       foods: [
                                        Food (name: "ايس امريكانو", image: "ايس امريكانو", price: 4.0),
                                     Food (name: "فرابتشينو كراميل", image: "فرابتشينو كراميل", price: 3.0),
                                        Food(name: "وايت موكا", image: "وايت موكا", price: 3.0)
                                     ]
                                       
                                      ),
                 
                 Rest (name: "بارنز",
                                      type: "مشروبات",
                                     state: "مغلق",
                                     rating: 3,
                                     logo: "شعار بارنز",
                                     
                                       foods: [
                                        Food (name: "دابل اب", image: "دابل اب", price: 4.0),
                                     Food (name: "سبانيش لاتيه", image: "سبانيش لاتيه", price: 3.0),
                                        Food(name: "روز لاتيه", image: "روز لاتيه", price: 3.0)
                                     ]
                                       
                                      )
            
   
      
]

var counter:[String:Int] = [:]
        

