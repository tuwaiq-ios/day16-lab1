//
//  Jahez.swift
//  review-pro(1-2-3)
//
//  Created by Ahmed Assiri on 11/03/1443 AH.
//


import UIKit

class VC1: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rest = restList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestCell", for: indexPath)
        as! Cell1
        
        cell.restName.text = rest.name
        cell.restLogo.image = UIImage(named: rest.logo)
        cell.restRating.text = "\(rest.rating)"
        cell.restState.text = rest.state
        cell.restType.text = rest.type
        
        return cell
    }
    
    @IBOutlet weak var restTV: UITableView!
    
    override func viewDidLoad()
    
    {
        
        super.viewDidLoad()
        restTV.delegate = self
        restTV.dataSource = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rest = restList[indexPath.row]
        
        performSegue(withIdentifier: "show_menu"  , sender: rest
        )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let vc2 = segue.destination as! VC2
        vc2.restFromVC2 = sender as? Rest
        
        
    }
}


//
//  VC2.swift


class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC2?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC2!.foods[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath)
        as! Cell2
        cell.foodName.text = food.name
        cell.foodImage.image = UIImage(named: food.image)
        cell.foodPrice.text = "\(food.price)"
        
        return cell
    }
    
    var restFromVC2: Rest?
    @IBOutlet weak var menuTV: UITableView!
    
    
    @IBOutlet weak var restLogo: UIImageView!
    
    @IBOutlet weak var restName: UILabel!
    
    @IBOutlet weak var restType: UILabel!
    
    @IBOutlet weak var restState: UILabel!
    
    @IBOutlet weak var restRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restName.text = restFromVC2?.name
        restType.text = restFromVC2?.type
        restState.text = restFromVC2?.state
        restLogo.image = UIImage(named:restFromVC2!.logo)
        restRating.text = "\(restFromVC2!.rating)"
        
        menuTV.delegate = self
        menuTV.dataSource = self
    }
}
