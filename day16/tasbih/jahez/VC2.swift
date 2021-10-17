//
//  VC2.swift
//  day16
//
//  Created by Amal on 11/03/1443 AH.
//

import UIKit

class VC2 : UIViewController , UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restfromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let food = restfromVC1!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath) as! Cell2
       
        
        cell.foodName.text = food.name
        cell.foodImage.image = UIImage(named: food.image)
        cell.foodPrice.text = "\(food.price)"
       
        return cell
    }
    
    var restfromVC1 : Rest?
    
    
    @IBOutlet weak var menuTV: UITableView!

    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var restRating: UILabel!
    @IBOutlet weak var restState: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        restName.text = restfromVC1?.name
        restType.text = restfromVC1?.type
        restState.text = restfromVC1?.State
        restLogo.image = UIImage(named: restfromVC1!.logo)
        restRating.text = "\(restfromVC1!.rating)"
        labelCount.text = "\(counter[restfromVC1!.name]! )"
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
  
    @IBOutlet weak var labelCount: UILabel!
   
}
