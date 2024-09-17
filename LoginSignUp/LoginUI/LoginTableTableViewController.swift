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
        
        validationCode()
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        if let signVC = self.storyboard?.instantiateViewController(identifier: "SignUpTableViewController") as? SignUpTableViewController{
            self.navigationController?.pushViewController(signVC, animated: true )
        }
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

extension LoginTableTableViewController{
    fileprivate func validationCode() {
        if let email = txtEmail.text, let password = txtPassword.text{
            
            if !email.validateEmailId(){
                openAlert(title: "Alert", message: "Email address not found.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }
            else if !password.validatePassword(){
                openAlert(title: "Alert", message: "Please enter valid password", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay clicked!")
                }])
            }
            else{
                // Navigation - Home Screen
            }
            
        }
        else{
            openAlert(title: "Alert", message: "Please add detail.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                print("Okay clicked!")
            }])
        }
    }
}
