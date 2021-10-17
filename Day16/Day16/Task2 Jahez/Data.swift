//
//  Data.swift
//  Jahez
//
//  Created by Fawaz on 04/03/1443 AH.
//

import UIKit

var counter: [String: Int] = [:]

struct Rest{
  let name: String
  let type: String
  let state: String
  let rating: Double
  let logo: String
  let foods: Array <Food>
}

struct Food {
  let name: String
  let image: String
  let price: Double
}

let restList = [
  
  Rest(
  name:  "مقهى ايت اوز",
  type: "قهوه، مشروبات، حلويات",
  state: "مفتوح",
  rating: 4.3,
  logo: "oz",
  foods: [
    Food(name: "فلايت وايت مع كوكيز", image: "oz1", price: 20),
    Food(name: "كعكه الحليب بالزعفران", image: "oz2", price: 15)
          ]
 ),
  
  Rest(
  name: "دانكن دونت",
  type: "مشروبات، حلويات، قهوه",
  state: "مفتوح",
  rating: 4.5,
  logo: "dun",
  foods: [
    Food(name: "عرض الجمعه", image: "dun1", price: 20),
    Food(name: "كرك شاي", image: "dun2", price: 10)
          ]
 ),
  
  Rest(
  name: "باسكن روبنز",
  type: "حلويات، ايس كريم",
  state: "مغلق",
  rating: 4.0,
  logo: "bas",
  foods: [
    Food(name: "مغرفه التوفير", image: "bas1", price: 15),
    Food(name: "ايس كريم", image: "bas2", price: 8)
          ]
 ),
  
  Rest(
  name: "دومينوز بيتزا",
  type: "بيتزا، ماكولات سريعه",
  state: "مفتوح",
  rating: 4.2,
  logo: "dom",
  foods: [
    Food(name: "داينمايت بيتزا", image: "dom1", price: 33),
    Food(name: "عرض بدون شروط", image: "dom2", price: 29)
          ]
 ),
  
  Rest(
  name: "شاورمر",
  type: "شاورما، ساندويشات",
  state: "مفتوح",
  rating: 3.5,
  logo: "sha",
  foods: [
    Food(name: "طلبك بطلبين", image: "sha1", price: 29),
    Food(name: "شاورما عربي", image: "sha2", price: 30)
          ]
 ),
  
  Rest(
  name: "البرجر الطازج",
  type: "ماكولات سريعه، ساندويشات",
  state: "مفتوح",
  rating: 3.3,
  logo: "bur",
  foods: [
    Food(name: "برجر دجاج", image: "bur1", price: 26),
    Food(name: "برجر لحم", image: "bur2", price: 30)
          ]
 )
]
