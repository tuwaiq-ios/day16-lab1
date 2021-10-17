
import UIKit

class VC2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var restFromVC1: Rest?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restFromVC1?.foods.count ??  0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let food = restFromVC1?.foods[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath) as! Cell2
        cell.foodName.text = food?.name
        cell.foodPrice.text = "\(food!.price)"
        cell.foodImage.image = UIImage(named: food!.image)
        
        
        return cell
    }
        

    
    @IBOutlet var menuTV: UITableView!
    
    
    @IBOutlet var restLogo: UIImageView!
    
    
    @IBOutlet var restName: UILabel!
    
    
    @IBOutlet var restType: UILabel!
    
    @IBOutlet var restRating: UILabel!
    
    @IBOutlet var restState: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restName.text = restFromVC1?.name
        restType.text = restFromVC1?.type
        restState.text = restFromVC1?.state
        restLogo.image = UIImage(named: restFromVC1!.logo)
        restRating.text = "\(restFromVC1!.rating)"
        visitLable.text = "\(counter[restFromVC1!.name] ?? 0 )"
        
        menuTV.delegate = self
        menuTV.dataSource = self

    }
    
    
    @IBOutlet var visitLable: UILabel!
    
    

    }
