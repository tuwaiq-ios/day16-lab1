//
//  ViewController.swift
//  myProjects
//
//  Created by ibrahim asiri on 11/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    var currentCount = 0
    @IBOutlet weak var countTasbih: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        currentCount = 0
        countTasbih.text = "0"
    }
    
    @IBAction func countPressed(_ sender: Any) {
        currentCount += 1
        countTasbih.text = String(describing: currentCount)
    }
    
}



