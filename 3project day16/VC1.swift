//
//  VC1.swift
//  jahez 9
//
//  Created by MacBook on 04/03/1443 AH.
//

import UIKit
class VC1:UIViewController,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rest = restList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "restCell", for: indexPath)as! Cell1
        
        cell.restName.text = rest.name
        cell.restLogo.image = UIImage(named: rest.logo)
        cell.restRating.text = "\(rest.rating)" //عرفناها بالشكل هذا لانها اساسا عدد صحيح ونبغي نطبعها كنص
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
        
       
        let rest = restList[indexPath.row] // بيانات المطعم الي نضغط عليها وتودينا للصفحة اللي بعدها
      
       // counter[rest.name]counter[rest.name]+1 //هنا يعطينا اوبشنل واحنا مانبغى لذلك نعمل الاتي
        let oldValue = counter[rest.name] ?? 0
        counter [rest.name] = oldValue+1
        
     performSegue(withIdentifier: "show_menu", sender: rest) // ينفذ) الربط)
        //اعطيناه اسم سهم الربط اللي ينقلنا للصفحة الثانية (show)وعرفناها باسم "show _menu".
    }
       override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // تجهزوتهيئ لنا وتحضر الصفحة الي تفتح بعدها
        let VC2 = segue.destination as! VC2  //
        VC2.restfromVC1 = sender as? Rest // هذا متغير سميناه في كلاس سل  restfromVC1
        //متغير يحمل قيمة الشاشة اللي نفتحها
         
         
         
    }
    
  
    }
 
