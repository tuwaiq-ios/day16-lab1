
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
    
    Rest(
    name: "MAC",
    type: "برجر",
    state: "open",
    rating: 3 ,
    logo: "maclogo",
    foods: [
        Food (name: "BURGER" , image:"bur2-1" , price: 30
             )
    ]
),
    
    Rest(
    name: "Albaik",
    type: "وجبات سريعة",
    state: "open",
    rating:  5 ,
    logo: "albaik-2",
    foods: [
        Food (name: "مسحب" , image:"baik" , price: 25
             )
    ]
),
    
    Rest(
    name: "pizza hut",
    type: "بيتزا",
    state: "open",
    rating: 4 ,
    logo: "pizza1",
    foods: [
        Food (name: "fries" , image:"fries" , price: 12
             )
    ]
)
]

var counter:[String:Int] = [:]

