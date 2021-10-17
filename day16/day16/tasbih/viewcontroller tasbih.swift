//
//  viewcontroller tasbih.swift
//  day16
//
//  Created by PC on 11/03/1443 AH.
//

import Foundation
import UIKit

class viewController: UIViewController {
    var currentcount = 0

    @IBOutlet weak var showNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func reset(){
        currentcount = 0
        currentcount = 0
        
    }
    
    @IBAction func resetPress(_ sender: Any) {
        reset()
        showNum.text = "0"
        
        
    }
    
    func count(){
        currentcount += 1
    
    }

    @IBAction func countPress(_ sender: Any) {
        count()
        showNum.text =  String(describing: currentcount)
    }
    
}

