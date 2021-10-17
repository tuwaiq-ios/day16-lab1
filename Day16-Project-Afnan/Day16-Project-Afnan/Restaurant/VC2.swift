//
//  VC2.swift
//  Day16-Project-Afnan
//
//  Created by Fno Khalid on 11/03/1443 AH.
//

import UIKit

class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restfromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restfromVC1?.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "menu", for: indexPath) as! Cell2
        
        
        cell.foodName.text = food?.name
        cell.foodPrice.text = "\(food!.price)"
        cell.foodImage.image = UIImage(named: food!.image)
        return cell
    }
    
    
    var restfromVC1: Rest?
    
    @IBOutlet weak var menuTV: UITableView!
    
    @IBOutlet weak var restLogo: UIImageView!
    
    @IBOutlet weak var restName: UILabel!
    
    @IBOutlet weak var restType: UILabel!
    
    @IBOutlet weak var restState: UILabel!
    
    @IBOutlet weak var restRating: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restName.text = restfromVC1?.name
        restLogo.image = UIImage (named: restfromVC1!.logo)
        restType.text = restfromVC1?.type
        restState.text = restfromVC1?.state
        restRating.text = "\(restfromVC1!.rating) "
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
    
    
    
}

