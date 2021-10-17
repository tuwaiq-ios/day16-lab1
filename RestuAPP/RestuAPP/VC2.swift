//
//  VC2.swift
//  RestuAPP
//
//  Created by MacBook on 04/03/1443 AH.
//

import UIKit

class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restFromVC1?.Foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC1!.Foods[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! Cell2
        
        
        cell.foodName.text = food.name
        cell.foodPrice.text = "\(food.price)"
         cell.foodImage.image = UIImage(named: food.image )
        cell.foodImage.layer.masksToBounds = true
        cell.foodImage.layer.cornerRadius = 22
        return cell
    }
    
    
    var restFromVC1: Rest?
    
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restRating: UILabel!
    
    
    @IBOutlet weak var restAdd: UILabel!
    
    @IBOutlet weak var restPho: UILabel!
    
    // for count
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restName.text = restFromVC1?.name
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restLogo.layer.masksToBounds = true
        restLogo.layer.cornerRadius = 27
        restType.text = restFromVC1?.type
        restState.text = restFromVC1?.State
        restRating.text = "\(restFromVC1!.rating)"
        
        restAdd.text = restFromVC1?.addres
        restPho.text = restFromVC1?.phone
        
        countLabel.text = "\(counter[restFromVC1!.name]!) "
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
}
