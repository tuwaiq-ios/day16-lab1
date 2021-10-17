//
//  Cell2.swift
//  marsool
//
//  Created by sara al zhrani on 04/03/1443 AH.
//

import UIKit
//
//  VC2.swift
//  marsool
//
//  Created by sara al zhrani on 04/03/1443 AH.
//

import UIKit

class VC2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC1!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! Cell2
      
    
    cell.foodName.text = food.name
    cell.foodPrice.text = "\(food.price)"
    cell.foodImage.image = UIImage(named: food.image)
    

    return cell
    }
    var restFromVC1:Rest?
    
    
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var menuTV: UITableView!
    
    @IBOutlet weak var restName: UILabel!
    
    @IBOutlet weak var restRating: UILabel!
    
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var visitCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restName.text = restFromVC1?.name
        restType.text = restFromVC1?.type
        restState.text = restFromVC1?.state
        restRating.text = "\(restFromVC1!.rating)"
        restLogo.image = UIImage(named: restFromVC1!.logo)
        visitCount.text = "\(count[restFromVC1!.name] ?? 0)"
           menuTV.delegate = self
            menuTV.dataSource = self

    }
    

    
}




