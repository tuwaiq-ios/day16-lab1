//
//  VC2.swift
//  newproject
//
//  Created by Macbook on 11/03/1443 AH.
//

import UIKit

class VC2 : UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC1!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath
        ) as! Cell2
        
        cell.foodName.text = food.name
        cell.foodImage.image = UIImage (named: food.image)
        cell.foodPrice.text = "\(food.price)"
        
        return cell
    }
    
    
    
    var restFromVC1:Rest?
    
    @IBOutlet weak var co: UILabel!
    
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restRating: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restName.text = restFromVC1?.name
        restType.text = restFromVC1?.type
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restState.text = restFromVC1?.state
        restRating.text = "\(restFromVC1!.rating)"
        
        
        
        let value = counter[restFromVC1!.name] ?? 0
        co.text = "\(value)"
        
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
}
