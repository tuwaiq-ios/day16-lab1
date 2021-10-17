//
//  Tasbih.swift
//  Day16
//
//  Created by sara al zhrani on 11/03/1443 AH.
//


import UIKit

class Tasbih: UIViewController {
  

    @IBOutlet weak var lable: UILabel!
    
    
    var currentcount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func reset(){
    // make count 0
        currentcount = 0    }
    
    @IBAction func rest(_ sender: Any) {
        reset( )
        lable.text = "\(self.currentcount) "
        
            }
    
    
    
    func count()  {
        //add 1 to virble
        currentcount += 1
        
  }
    
    
    @IBAction func count(_ sender: Any) {
        currentcount += 1
        lable.text = "\(self.currentcount) "
    }
    
}
