//
//  Tasbih.swift
//  Abdulaziz.Projects
//
//  Created by Abdulaziz on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var c = 0
    @IBOutlet weak var numb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetPress(_ sender: Any) {
        c = 0
        numb.text = "0"
    }
    
    @IBAction func count(_ sender: Any) {
        c += 1
        numb.text = "\(c)"
        
    }
    
}
