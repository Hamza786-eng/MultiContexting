//
//  ViewController.swift
//  AdvancedMulticontext
//
//  Created by TheRightSW on 14/06/2021.
//

import UIKit

class ViewController: UIViewController {

  //MARK:- IBOutlets
    @IBOutlet weak var tblView: UITableView!
    
      //MARK:- Properties
    let empManager = ApiCall()
    var arr = EmplyeeResponse()

    
      //MARK:- ViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        empManager.getData{ [self] emp in
            self.arr = emp
            DispatchQueue.main.async {
                self.tblView.reloadData()
            }
        }
      
       
    }


}

  //MARK:- Extension TableView
extension ViewController : UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        arr.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoCell") as! DemoCell
        
        let data = arr.data[indexPath.row]
        cell.lblName.text = data.employee_name
        cell.lblage.text = "\(data.employee_age)"
        cell.lblsal.text = "\(data.employee_salary)"
      
        
        return cell
    }


}

