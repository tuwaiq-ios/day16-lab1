//
//  cp3.swift
//  RestuAPP
//
//  Created by MacBook on 11/03/1443 AH.
//


import UIKit

protocol checkButtondelegate {
    
    func checkTaskTapped(at index:IndexPath)
    
}



class cp3: UITableViewCell, UITextFieldDelegate {
    
    
    var delegate:checkButtondelegate!
    var indexpath: IndexPath!
    
    func setup()  {
        self.cellfield.delegate = self
    }
    
  
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var cellfield: UITextField!
    
    
    @IBAction func action(_ sender: Any) {
    
    
        delegate.checkTaskTapped(at: indexpath)
    }
    //
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let update = Task(taskTitle: cellfield.text, isCompleted: taskArray[indexpath.row].isCompleted)
        taskArray[indexpath.row] = update
        cellfield.resignFirstResponder()
        return true
    }
}





