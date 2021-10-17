//
//  ViewController.swift
//  Tasbeeh
//
//  Created by  HANAN ASIRI on 23/02/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    var currentCount = 0
    

    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var backgroundview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func reast() {
        currentCount = 0
        // make count variable 0
    }
    
    @IBAction func restbuttone(_ sender: Any) {
        currentCount = 0
       lable.text = "\(self.currentCount)"
    }
    func count() {
        currentCount += 1
        
        // add 1 to count variable
    }

    @IBAction func countbuttone(_ sender: Any) {
        currentCount += 1
        lable.text = "\(self.currentCount)"
        
    }
    
}
