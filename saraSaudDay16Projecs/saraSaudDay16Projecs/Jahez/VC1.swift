//
//  VC1.swift
//  Sara.jahez
//
//  Created by SARA SAUD on 3/4/1443 AH.
//

import UIKit
class VC1: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //var name
        return restList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rest = restList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestCell",
        for: indexPath) as! Cell1
          
        cell.restName.text = rest.name
        cell.restLogo.image = UIImage(named: rest.logo)
        cell.restState.text = rest.state
        cell.restTybe.text = rest.type
        cell.restRating.text = "\(rest.rating)"
        
        return cell
    }
    
    
    @IBOutlet weak var restTv: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        restTv.delegate = self
        restTv.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
        let rest = restList[indexPath.row]
        
        //1- send (rest) to the next page by runing the link line...
       
        //counter
        let oldValue = counter[rest.name] ?? 0
        counter[rest.name] = oldValue + 1
      //  print(counter[rest.name])
        
        //
        performSegue(withIdentifier:"show_menu", sender: rest)
    }
    
    //2- prepare the next page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
      //3- the last destination
        let vc2 = segue.destination as! VC2
        
        vc2.restFromVC1 = sender as? Rest
    }
}
