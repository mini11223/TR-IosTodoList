//
//  LoginViewController.swift
//  TodoList
//
//  Created by Visitor on 30/07/2019.
//  Copyright © 2019 Visitor. All rights reserved.
//

import UIKit
import Alamofire
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var loginButton: UIButton!

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func register(_ sender: UIButton) {
        let registerViewController = self.storyboard!.instantiateViewController(withIdentifier: "RegisterViewController")
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
   
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if let username = usernameTextField.text,
        let password = passwordTextField.text,
            username.count > 0,
            password.count > 0
        {
            loginWith(username: username, password: password)

        }else{
            showInvalidCredentialEvents()
        }
    }
    
    func showInvalidCredentialEvents(){
        
    }
    
    func sum(x:Int,y:Int) -> Int {
        return x+y
    }
    
    func loginWith(username: String, password:String){
        
        let todoListViewController = self.storyboard!.instantiateViewController(withIdentifier: "ToolLiesViewController")
        self.navigationController?.pushViewController(todoListViewController, animated: true)

        
        
        
    }
    
}
