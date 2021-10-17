//
//  VC2.swift
//  Sara.jahez
//
//  Created by SARA SAUD on 3/4/1443 AH.
//

import UIKit
class VC2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ?? 0
    }
    
    @IBOutlet weak var restVesetor: UILabel!
    //make count variable 0
    // counter = 0
    
    
    //2 transfor int to string
   // counter.text = "\(counter)"
    //add 1 to count variable
    //counter += 1
  
  
  //1 transfor int to string

 // counter.text = String(describing: count)
    //
   
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        let food = restFromVC1!.foods[indexPath.row]
        
        //يظهر الخلايا المطلوبه في الشاشة حسب العدد المتاح على الشاشة وحده ورا وحده
        let cell = tableView.dequeueReusableCell(withIdentifier:"FoodCell",
             for: indexPath) as! Cell2
        //counter
        
        
        
        cell.foodName.text = food.name
        cell.foodPrice.text = "\(food.price)"
        cell.foodImage.image = UIImage(named: food.image)
        return cell
    }
    
    
    //after destinaiton
    var restFromVC1 : Rest?
    
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restTybe: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restRating: UILabel!
//فنكشن اضافي  ونكتب تحته اتواع البيانات،وتشتغل االفنقشن اول مايتحمل الكلاس على الصفحة 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restName.text = restFromVC1?.name
        restTybe.text = restFromVC1?.type
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restState.text = restFromVC1?.state
        restRating.text = "\(restFromVC1!.rating)⭐️"
    
       // restVesetor.text = counter[rest.name]
        let oldValue = counter[restFromVC1!.name] ?? 0
        restVesetor.text = "\(oldValue)V👁"
       
        menuTV.delegate = self
        menuTV.dataSource = self
    }
}
