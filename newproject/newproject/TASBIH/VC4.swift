//
//  VC1.swift
//  newproject
//
//  Created by Macbook on 11/03/1443 AH.
//

import UIKit
class VC4: UIViewController {
    var cr=0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var re: UIImageView!
    @IBOutlet weak var inc: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func reset(_ sender: Any) {
        cr = 0
        label.text = "0"
    }

    @IBAction func inc(_ sender: Any) {
        cr += 1
        label.text = "\(cr)"
    }
}
