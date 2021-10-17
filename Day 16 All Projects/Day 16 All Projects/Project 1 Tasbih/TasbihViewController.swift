//
//  TasbihViewController.swift
//  Day 16 All Projects
//
//  Created by Eth Os on 11/03/1443 AH.
//

import UIKit

class TasbihViewController: UIViewController {

    var counter = 0

    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func restButton(_ sender: Any) {
        counter = 0
        countLabel.text = "\(self.counter)"
    }
    
    @IBAction func countButton(_ sender: Any) {
        counter += 1
        countLabel.text = "\(self.counter)"
    }
}


