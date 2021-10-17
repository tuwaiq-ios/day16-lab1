//
//  ViewController.swift
//  Day16
//
//  Created by dmdm on 17/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currentcount = 0
    
    @IBOutlet weak var countlable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func reset() {
        //make count variable 0
        currentcount = 0
    }
    
    @IBAction func restartpressed(_ sender: Any) {
        reset()
        countlable.text = "0"
    }
    func count() {
        //add 1 to count varialbe
        currentcount += 1
    }
  
    @IBAction func countpressed(_ sender: Any) {
        count()
        countlable.text = "\(currentcount)"
    }
}
