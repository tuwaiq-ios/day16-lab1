//
//  Data.swift
//  RestuAPP
//
//  Created by MacBook on 04/03/1443 AH.
//

import UIKit


struct Rest {
    let name: String
    let type: String
    let State: String
    let rating: Int
    let logo: String
    let addres: String
    let phone: String
    
    let Foods: Array<Food>
}



struct Food {
    let name: String
    let image: String
    let price: String
}


let restList = [ Rest(name: " Spice Show-سبايس شو",
                 type: "مأكولات إيطاليه",
                 State: "مفتوح",
                 rating: 5,
                 logo: "R1",
                      addres: "ابها-شارع الاربعين",
                      phone: "0538399888",
                 Foods: [
                    Food(name: " تكساس فرايز", image: "R1i1", price: "30.50 SR"),
                    Food(name: "سلطه فتوش", image: "R1i2", price: "32.50 SR"),
                    Food(name: "سلطه سيزر ", image: "R1i3", price: "32.50 SR")
                 ]
),
Rest(name: "CHEF - شيف بايت",
                 type: "ستيك ",
                 State: "مفتوح",
                 rating: 5,
                 logo: "R2",
     addres: "ابها-طريق الملك عبدالعزيز",
     phone: "0503382374",
                 Foods: [
                   
                    Food(name:  "كوزو صاج", image: "R2i2", price: "65.99 SR"),
                    Food(name: "ورق عنب", image: "R2i3", price: "30.99 SR"),
                    Food(name: "واغيو ستيك", image: "R2i1", price: "78.99 SR")
                 ]
),
                 Rest(name: "Nawah - نواة",
                                  type: "قهوه - حلويات ",
                                  State: "مفتوح",
                                  rating: 5,
                                  logo: "R3",
                      addres: "ابها-حي الضباب",
                      phone: "920035488",
                                  Foods: [
                                     Food(name:"كورتادو", image: "R3i1", price: "15.59 SR"),
                                     Food(name: "سبانيش لاتيه", image: "R3i2", price: "16.99 SR"),
                                     Food(name: "فلات وايت", image: "R3i3", price: "15.59 SR")
                                  ]
                 )
                   , Rest(name:  "Horof- حروف",
                          type: "مشروبات-حلويات ",
                          State: "مفتوح",
                          rating: 4,
                          logo: "R7",
                          addres: "ابها-طريق الملك عبد العزيز",
                          phone: "0583169883",
                          Foods: [
                             Food(name: " كريب بستاشيو", image: "r7i1", price: "27.99 SR"),
                             Food(name: " ميني بان كيك مكس", image: "r7i2", price: "28.99 SR"),
                             Food(name: " رد فلفت ", image: "r7i3", price: "20.99 SR")
                          ]
         ),
       
                 Rest(name: "Lavish- لافيش",
                                  type: "مشروبات-حلويات ",
                                  State: "مفتوح",
                                  rating: 4,
                                  logo: "R5",
                      addres: "ابها-طريق الملك عبدالعزيز",
                      phone: "0509293338",
                                  Foods: [
                                     Food(name: " لاتيه", image: "r5i1", price: "23.99 SR"),
                                     Food(name: " فرنش توست لافيش", image: "r5i2", price: "39.99 SR"),
                                     Food(name: " افطار لافيش", image: "r5i3", price: "38.99 SR")
                                  ]
                 ) ,
                 Rest(name: "dough Source- دو سورس ",
                                  type: "مأكولات  ",
                                  State: "مفتوح",
                                  rating: 4,
                                  logo: "R6",
                      addres: "ابها-طريق الملك فهد",
                      phone: "0501465018",
                                  Foods: [
                                     Food(name: " بيستو دجاج ", image: "r6i1", price: "35.99 SR"),
                                     Food(name:" فاهيتا الدجاج ", image: "r6i2", price: "28.99 SR "),
                                     Food(name:" كلوب ساندوتش ", image: "r6i3", price: "30.99 SR")
                                  ]
                 ) ,
                
                 Rest(name: " Little Caesars- ليتل سيزر",
                                  type: "بيتزا",
                                  State: "مفتوح",
                                  rating: 4,
                                  logo: "R4",
                      addres: "ابها-حي المنسك",
                      phone: "0172797193",
                                  Foods: [
                                     Food(name: "بيتزا فيجي", image: "R4i1", price: "35.99 SR"),
                                     Food(name: "بيتزا رانش دجاج", image: "R4i2", price: "35.99 SR"),
                                     Food(name: " بيتزا تشيلي دجاج", image: "R4i3", price: "35.99 SR")
                                  ]
                 )





]

var counter: [String:Int] = [:]
