//
//  VC1.swift
//  DAY16
//
//  Created by Kholod Sultan on 11/03/1443 AH.
//

import UIKit
class VC1: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rest = restList[indexPath.row]
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestCell", for: indexPath) as! Cell1
        
        cell.restName.text = rest.name
        cell.restLogo.image = UIImage (named: rest.logo)
        cell.restState.text = rest.state
        cell.restType.text = rest.type
        
        return cell
    }
    
    
    
    @IBOutlet weak var RestTV: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RestTV.delegate = self
        RestTV.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rest = restList[indexPath.row]
        
        let oldvalue = vistorsCounter[rest.name] ?? 0
        vistorsCounter[rest.name] = oldvalue + 1
    
        
        performSegue(withIdentifier:"show_menu" , sender: rest)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        let vc2 = segue.destination as! VC2
        vc2.restFromVC1 = sender as? Rest
   
    }
    
    
}








