//
//  LoginTableTableViewController.swift
//  LoginSignUp
//
//  Created by Yashom on 15/09/24.
//

import UIKit

class LoginTableTableViewController: UITableViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
    }
    
}

extension LoginTableTableViewController{
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height
    }
    
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           let tableViewHeight = self.tableView.frame.height
           let contentHeight = self.tableView.contentSize.height
           
           let centeringInset = (tableViewHeight - contentHeight) / 2.0
           let topInset = max(centeringInset, 0.0)
           
           self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
       }
}
