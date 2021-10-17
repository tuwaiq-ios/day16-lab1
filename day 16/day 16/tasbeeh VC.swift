//
//  tasbeeh VC.swift
//  day 16
//
//  Created by Maram Al shahrani on 11/03/1443 AH.


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currentcount : Int  = 0
    
    
    
    func Reset (){
        // make count varible 0
        var currentcount = 0
        
    }
    @IBOutlet weak var tasbeehcount: UILabel!
    
    
    @IBOutlet weak var ViewLabe: UILabel!
    
    @IBOutlet weak var tabelView: UITableView!
    
    
    @IBAction func resetButton(_ sender: Any) {
        reset()
    }
    
    @IBAction func countButton(_ sender: Any) {
        count()
    }
    
    
    func reset (){
        
        
        ViewLabe.text = "0"
    }
    
    func count () {
        //add to count varible
        currentcount += 1
        ViewLabe.text = "\(currentcount)"
        
        
    }
    
    
}



