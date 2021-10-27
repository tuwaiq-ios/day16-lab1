//
//  Tasbih.swift
//  review-pro(1-2-3)
//
//  Created by Ahmed Assiri on 11/03/1443 AH.
//


import UIKit

class Tasbih : UIViewController {
    
    var currentCount = 0
   
    @IBOutlet weak var bsckground: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func resetPressed(_ sender: Any) {
        currentCount = 0
        bsckground.text = "0"
    }

    
    @IBAction func countPressed(_ sender: Any) {
        currentCount += 1
        bsckground.text = "\(currentCount)"
        
    }


}
