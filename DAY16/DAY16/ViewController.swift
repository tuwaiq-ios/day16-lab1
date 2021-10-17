//
//  ViewController.swift
//  DAY16
//
//  Created by Kholod Sultan on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currentcount : Int  = 0
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBAction func count(_ sender: Any) {
        
        currentcount += 1
        label1.text = "\(currentcount)"
         
    }
    
    
    @IBAction func reset(_ sender: Any) {
        
        label1.text="0"
    }
    
    
    
}




