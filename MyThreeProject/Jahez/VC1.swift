//
//  vc.swift
//  Day16
//
//  Created by sara al zhrani on 11/03/1443 AH.
//


//
//  VC1.swift
//  marsool
//
//  Created by sara al zhrani on 04/03/1443 AH.
//

import UIKit
class VC1: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restlist.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rest = restlist[indexPath.row ]
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"RestCell", for: indexPath) as! Cell1
        
        
        
    
    
    cell.restName.text = rest.name
    cell.restLogo.image = UIImage(named: rest.logo)
    cell.restState.text = rest.state
    cell.restType.text = rest.type
    cell.restRating.text = "\(rest.rating)"
    return cell
    
    }
    
    @IBOutlet weak var restTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restTV.delegate = self
        restTV.dataSource = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rest = restlist[indexPath.row]
        let oldValue = count[rest.name] ?? 0
        count[rest.name] = oldValue + 1
                
performSegue(withIdentifier: "show_menu", sender: rest)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let vc2 = segue.destination as!VC2
        vc2.restFromVC1 = sender as?Rest
        
        
    }
    
    
}
