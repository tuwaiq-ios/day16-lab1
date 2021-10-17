//
//  tasbihViewController.swift
//  Day16-Project-Afnan
//
//  Created by Fno Khalid on 11/03/1443 AH.
//

import UIKit

class tasbihViewController: UIViewController {
    var currentcount: Int = 0

    
    @IBOutlet weak var backgroundview: UIImageView!
    @IBOutlet weak var countlable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func resetpressd(_ sender: Any) {
    
        currentcount = 0
        countlable.text = "\(currentcount)"
    }
    


    @IBAction func countpressd(_ sender: Any) {
        
        
        currentcount += 1
        countlable.text = "\(currentcount)"
    }
}





