//
//  VC2.swift
//  Day16Projects
//
//  Created by HANAN on 11/03/1443 AH.
//


import UIKit

class VC2: UIViewController, UITableViewDelegate ,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC1!.foods[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menu_cell", for: indexPath
        ) as! Cell2
        
        cell.foodName.text = food.name
        cell.foodPrice.text = "\(food.price)"
        cell.foodImage.image = UIImage(named: food.image)
        
        return cell
    }
    
    
    var restFromVC1: Rest?
    
    
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restRating: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        restName.text = restFromVC1?.name
        restType.text = restFromVC1?.type
        restState.text = restFromVC1?.state
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restRating.text = "\(restFromVC1!.rating)"
        vistCount.text = "\(counter[restFromVC1!.name]!)"
        
        //استخدمنا name لانه ما يتغير اذا القائمه بتكون طويلة ال type ممكن يتغير
        
        
        menuTV.delegate = self
        menuTV.dataSource = self
        
    }


    @IBOutlet weak var vistCount: UILabel!
    
    
}
