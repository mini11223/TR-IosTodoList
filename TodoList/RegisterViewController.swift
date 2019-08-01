//
//  RegisterViewController.swift
//  TodoList
//
//  Created by Visitor on 31/07/2019.
//  Copyright © 2019 Visitor. All rights reserved.
//

import UIKit
import Alamofire

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var retypePasswordField: UITextField!
    
    @IBAction func registerButton(_ sender: UIButton){
        if let username =   usernameField.text,
        let password = passwordField.text,
        let retypePassword = retypePasswordField.text,
        username.count    >   0,
        password.count > 0,
            retypePassword.count > 0{
            if verifyPassMatch(passA: password,
                               passB: retypePassword){
                register(username: username, password: password)
            }
            else {
                showPwdNotMatchError()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func verifyPassMatch(passA : String, passB : String) -> Bool {
        return passA == passB
    }
  
    func showPwdNotMatchError()
    {
        
    }
    
    func register(username:String,password:String){
        let params = ["username": username,"password":password]
        let url = "http://192.168.0.157:8000/user/register"
        Alamofire.request(url, method: .post , parameters: params,encoding: JSONEncoding.default).responseJSON{response in
            guard let data = response.data else{
                return
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
