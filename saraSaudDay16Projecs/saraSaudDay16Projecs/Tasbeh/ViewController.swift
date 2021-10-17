//
//  ViewController.swift
//  saraSaudDay16Projecs
//
//  Created by SARA SAUD on 3/11/1443 AH.
//
//
//  ViewController.swift
//  project1
//
//  Created by SARA SAUD on 2/21/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var currentCount = 0
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBOutlet weak var backgroundborder: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundborder.layer.borderWidth = 10
        backgroundborder.layer.borderColor = UIColor.black.cgColor
        backgroundborder.layer.cornerRadius = 250
        
    }
  
    @IBAction func reset(_ sender: Any) {
        //make count variable 0
         currentCount = 0
        
        
        //2 transfor int to string
        countLabel.text = "\(currentCount)"

    }
    @IBAction func count(_ sender: Any) {
        
          //add 1 to count variable
          currentCount += 1
        
        
        //1 transfor int to string

        countLabel.text = String(describing: currentCount)
    }
}
 
