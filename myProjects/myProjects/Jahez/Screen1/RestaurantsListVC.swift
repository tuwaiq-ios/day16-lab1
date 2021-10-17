//
//  ViewController.swift
//  myProjects
//
//  Created by ibrahim asiri on 11/03/1443 AH.
//

import UIKit

class RestaurantsListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rest = restaurants[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestCell", for: indexPath) as! RestaurantCell
        
        cell.restaurantName.text = rest.name
        cell.restaurantLogo.image = UIImage(named: rest.logo)
        cell.restaurantRating.text = "\(rest.rating)"
        cell.restaurantType.text = rest.type
        cell.restaurantState.text = rest.state
        
        return cell
    }
    
    @IBOutlet weak var restaurantTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantTV.delegate = self
        restaurantTV.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rest = restaurants[indexPath.row]
        
        let oldValue = counter[rest.name] ?? 0
        counter[rest.name] = oldValue + 1
        
        performSegue(withIdentifier: "openMenu", sender: rest)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let restMenu = segue.destination as! RestaurantMenuVC
        restMenu.restFromList = sender as? Restaurant
    }
    
}
