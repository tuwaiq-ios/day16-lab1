//
//  VeiwCotntroller.swift
//  Day16Projects
//
//  Created by HANAN on 11/03/1443 AH.
//
import UIKit

class ViewControllerTasbih: UIViewController {
    
    @IBOutlet weak var lab1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    var number = 0
    @IBOutlet weak var current: UILabel!
    

    
    func reset() {
        number = 0
        
        current.text = "\(number)"
    }
    
    @IBAction func reset(_ sender: Any) { reset()
    }
    
    
    func count() {
        number += 1
        
        current.text = "\(number)"
    }
    
    @IBAction func count(_ sender: Any) { count()
    }
}
