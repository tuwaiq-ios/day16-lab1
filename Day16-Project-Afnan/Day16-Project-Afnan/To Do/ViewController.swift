//
//  ToDoViewController.swift
//  Day16-Project-Afnan
//
//  Created by Fno Khalid on 11/03/1443 AH.
//

import UIKit


struct task {
    
    var taskTitle: String?
    var iscomplatid = false
}

var taskArray = [task]()


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, checkButtondelgate {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var taskfeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if taskArray.count > 0 {
            return taskArray.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "taskcell", for: indexPath) as! taskTableViewCell
        
        cell.delgate = self
        cell.indexpath = indexPath
        cell.textfield.text = taskArray[indexPath.row].taskTitle
        if taskArray[indexPath.row].iscomplatid {
            cell.buttoncell.setImage( _ImageLiteralType(named: "check"), for: .normal)
        }else{
            cell.buttoncell.setImage( _ImageLiteralType(named: "uncheck button"), for: .normal)
        }
        return cell
    }
    
    
    func checkTaskTapped(at indexpath: IndexPath) {
        if taskArray[indexpath.row].iscomplatid {
            taskArray[indexpath.row].iscomplatid = false
        }else {
            taskArray[indexpath.row].iscomplatid = true
        }
        tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        
        let cell = taskArray[indexPath.row]
        
        let alertcontroller = UIAlertController(title: "Alert"
                                                , message: "Are you sure you want to delete all the tasks?"
                                                , preferredStyle: UIAlertController.Style.alert
        )
        
        alertcontroller.addAction(
            UIAlertAction(title: "cancel", style: UIAlertAction.Style.default, handler: { Action in print("...")
            })
            
        )
        
        alertcontroller.addAction(
            UIAlertAction(title: "Delete", style: UIAlertAction.Style.destructive, handler: { Action in
                if editingStyle == .delete {
                    taskArray.remove(at: indexPath.row)
                    self.tableview.deleteRows(at: [indexPath], with: .fade)
                }
                self.tableview.reloadData()
            })
            
        )
        
        
        self.present(alertcontroller, animated: true, completion: nil)
        
    }
    
    
    @IBAction func bp(_ sender: Any) {
        if taskfeild.hasText {
            let newTask = task(taskTitle: taskfeild.text,  iscomplatid: false)
            taskArray.insert(newTask, at: 0)
            tableview.reloadData()
        }
        
        taskfeild.text = " "
        taskfeild.resignFirstResponder()
    }
}


