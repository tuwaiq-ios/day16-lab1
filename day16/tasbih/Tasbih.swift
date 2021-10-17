//
//  Tasbih.swift
//  day16
//
//  Created by Amal on 11/03/1443 AH.
//

import UIKit

class Tasbih: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
 var currentcounter = 0
 
    @IBOutlet weak var label: UILabel!
    
    func reset(){
        currentcounter = 0
        label.text = String(describing: currentcounter)
    }
    
    @IBAction func resett(_ sender: Any)
    {
    reset()    }
    
    func count(){
        currentcounter += 1
        label.text = String(describing: currentcounter)
    }
    
    @IBAction func countt(_ sender: Any) {
    count()
}
}
