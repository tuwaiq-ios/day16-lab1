//
//  ViewController.swift
//  day16
//
//  Created by Tsnim Alqahtani on 11/03/1443 AH.
//



import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var lable: UILabel!
    var currentCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
    
    }

    
    @IBAction func reset() {
        // make count variable 0
      currentCount = 0
        lable.text = "\(currentCount)"
        
        // "0"
 
        
    }
   

    @IBAction func count() {
       
// add 1 to cunt variable 0
        currentCount += 1
            lable.text = "\(currentCount)"
        
    }
}

