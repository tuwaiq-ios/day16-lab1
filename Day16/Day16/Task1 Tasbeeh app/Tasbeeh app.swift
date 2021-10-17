//
//  ViewController.swift
//  Tasbeeh app
//
//  Created by Fawaz on 23/02/1443 AH.
//


import UIKit

class Tasbeeh: UIViewController {
  
  var currentCount : Int = 0
  @IBOutlet weak var Lablef: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    Lablef.layer.cornerRadius = 10
    Lablef.layer.masksToBounds = true
    
  }
  
  @IBAction func resetLable(_ sender: Any) {
    currentCount = 0
    Lablef.text = "0"
  }
  
  @IBAction func countLable(_ sender: Any) {
    currentCount += 1
    Lablef.text = "\(currentCount)"
  }
}
