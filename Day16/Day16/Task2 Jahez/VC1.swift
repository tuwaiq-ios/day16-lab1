//
//  VC1.swift
//  Jahez
//
//  Created by Fawaz on 04/03/1443 AH.
//

import UIKit

class VC1: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let rest = restList[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "RestCell", for: indexPath) as! Cell1
    
    cell.restName.text = rest.name
    cell.restLogo.image = UIImage(named: rest.logo)
    cell.restRating.text = "\(rest.rating)"
    cell.restState.text = rest.state
    cell.restType.text = rest.type
     
    return cell
  }

  @IBOutlet weak var restTV: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    restTV.delegate = self
    restTV.dataSource = self
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let rest = restList [indexPath.row]

    let oldValue =  counter[rest.name] ?? 0
    counter[rest.name] = oldValue + 1

    performSegue(withIdentifier: "show_menu", sender: rest)
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    
    let vc2 = segue.destination as! VC2
    
    vc2.restFromVC1 = sender as? Rest
    
  }
}
