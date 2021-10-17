//
//  RestaurantMenuVC.swift
//  myProjects
//
//  Created by ibrahim asiri on 11/03/1443 AH.
//

import UIKit

class RestaurantMenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var restFromList : Restaurant?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromList?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromList!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! MenuCell
        
        cell.foodName.text = food.name
        cell.foodImage.image = UIImage(named: food.image)
        cell.foodPrice.text = "\(food.price)"
        cell.foodName.backgroundColor = UIColor.gray
        cell.foodName.textColor = UIColor.white
        
        return cell
    }
    
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restaurantLogo: UIImageView!
    @IBOutlet weak var reataurantName: UILabel!
    @IBOutlet weak var restaurantType: UILabel!
    @IBOutlet weak var restaurantState: UILabel!
    @IBOutlet weak var restaurantRating: UILabel!
    @IBOutlet weak var restaurantVist: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reataurantName.text = restFromList?.name
        restaurantType.text = restFromList?.type
        restaurantLogo.image = UIImage(named: restFromList!.logo)
        restaurantRating.text = "\(restFromList!.rating)"
        restaurantState.text = restFromList?.state
        restaurantVist.text = "\(counter[restFromList!.name]!)"
        reataurantName.backgroundColor = UIColor.gray
        restaurantState.backgroundColor = UIColor.gray
        restaurantVist.backgroundColor = UIColor.gray
        reataurantName.textColor = UIColor.white
        restaurantState.textColor = UIColor.white
        restaurantVist.textColor = UIColor.white
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
}
