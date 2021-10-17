//
//  VCp1.swift
//  RestuAPP
//
//  Created by MacBook on 11/03/1443 AH.
//

import UIKit

class VCp1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var currentcounter = 0
    
    @IBOutlet weak var Label1: UILabel!
    
    func reset(){
        currentcounter = 0
        Label1.text = String(describing: currentcounter)
        
    }
    @IBAction func ButtonReset(_ sender: Any) {
        reset()
    }
    func count(){
        currentcounter += 1
        Label1.text = String(describing: currentcounter)
        
    }
    
    @IBAction func Buttoncount(_ sender: Any) {
        
        count()
    }
  
     
    
    
    

}

