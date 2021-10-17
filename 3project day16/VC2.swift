//
//  VC2.swift
//  jahez 9
//
//  Created by MacBook on 04/03/1443 AH.
//

import UIKit


class VC2:UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restfromVC1?.foods.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restfromVC1!.foods[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"foodcell", for: indexPath) as! Cell2       // لمن تشتغل ديكيو ريزبل سل بحسب الايدينتفاير ويسوي لها دي كيو يصير يطلع وحدة ات تايم حسب اندكس باث//
       
        cell.foodName.text = food.name
        cell.foodPrice.text = "\(food.price)"
        cell.foodImage.image = UIImage(named: food.image)
        return cell
    }
    
    var restfromVC1 : Rest? 
    @IBOutlet weak var menuTV: UITableView!
    @IBOutlet weak var restLogo: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var restState: UILabel!
    @IBOutlet weak var restRating: UILabel!
    
    @IBOutlet weak var countlabel: UILabel!
    
   
   
  
    
    override func viewDidLoad() {  // هذا تنبيه
        super.viewDidLoad()        // هو جزء من كلاس اكبر تظهر لنا في الواجهة كانها تقول الواجهه قد تحملت والان الخطوة التالية
        
    restName.text = restfromVC1?.name // احتمال مايكون فيه قيمة [الاستفهام
        restType.text = restfromVC1?.type
        restState.text = restfromVC1?.state// كتبنا الاكواد الي نبيها تظهر
        restLogo.image = UIImage(named: restfromVC1!.logo)
        restRating.text = "\(restfromVC1!.rating)"
        countlabel.text = "\(counter[restfromVC1!.name]!)"
        
        
        menuTV.delegate = self
        menuTV.dataSource = self
        
        
        
        
        
    
    
    }
    
    
    
    
}


