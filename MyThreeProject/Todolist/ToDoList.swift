//
//  ViewController.swift
//  Remind me
//
//  Created by sara al zhrani on 07/03/1443 AH.
//

import UIKit
struct Task {
    
    var TaskTitle: String?
    var iScompletd = false
}


var taskAraay = [Task]()


class ToDoList: UIViewController ,UITableViewDataSource, UITableViewDelegate,
                     chekBouttonDelegte {
    
    func checkTaskTapped(at index: IndexPath) {
        if taskAraay[index.row].iScompletd{
                  taskAraay[index.row].iScompletd = false
              } else {
                  taskAraay[index.row].iScompletd = true
                  
              }
        TableVIEW.reloadData()
    }
    

    
    @IBOutlet weak var TaskTitle: UITextField!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if TaskTitle.hasText {
            let newTask = Task(TaskTitle: TaskTitle.text, iScompletd: false)
            taskAraay.insert(newTask , at: 0)
            TableVIEW.reloadData()
        }
        TaskTitle.text = " "
        TaskTitle.resignFirstResponder()
    }
    
    @IBOutlet weak var TableVIEW: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableVIEW.dataSource = self
        TableVIEW.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskAraay.count
    }
    
    
    
    
    func tableView(_ tableView:UITableView, commit edititingStyle:UITableViewCell.EditingStyle , forRowAt indexPath: IndexPath){
        
        
            let alertcontroller = UIAlertController(title: "Alert"
                                , message: "Are you sure you want to delete this tasks?"
                                , preferredStyle: UIAlertController.Style.alert
            )
            alertcontroller.addAction(
              UIAlertAction(title: "cancel", style: UIAlertAction.Style.default, handler: { Action in print("...")
              })
            )
            alertcontroller.addAction(
              UIAlertAction(title: "Delete", style: UIAlertAction.Style.destructive, handler: { Action in
        if edititingStyle == .delete{
            taskAraay.remove(at: indexPath.row)
            self.TableVIEW.deleteRows(at: [indexPath], with: .fade)
             }
                  self.TableVIEW.reloadData()
              })
    )
    self.present(alertcontroller, animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "task_cell", for: indexPath) as!TaskTableviewCell
        
        cell.delegate = self
        cell.indexpath = indexPath
        cell.textlable.text = taskAraay[indexPath.row].TaskTitle
        if taskAraay[indexPath.row].iScompletd {
            cell.chekBoutton.setImage(UIImage(systemName:"circle.inset.filled"), for: .normal
                                      )
        } else {
            cell.chekBoutton.setImage(UIImage(systemName:"circle"), for: .normal
                                      )
    }
        return cell
        
      
    }
    
}

