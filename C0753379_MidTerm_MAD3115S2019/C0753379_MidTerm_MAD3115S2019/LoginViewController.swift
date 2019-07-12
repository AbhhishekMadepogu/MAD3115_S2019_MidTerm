//
//  ViewController.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var flag = Bool()

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btnLogin(_ sender: UIButton) {
        if let plist=Bundle.main.path(forResource: "UserInfo", ofType: "plist")
        {
            if let dict=NSDictionary(contentsOfFile: plist){
                if let users=dict["user"] as? [[String:Any]]{
                    for user in users{
                        if ((self.txtUserName.text==(user["username"]as! String))&&(self.txtPassword.text==(user["password"] as! String))){
                            flag=true
                            
                            let userDefault=UserDefaults.standard
                            if self.switchRememberme.isOn{
                                userDefault.set(txtPassword.text,forKey: "password")
                                userDefault.set(txtUserName.text,forKey: "username")
                            }
                            else{
                                userDefault.removeObject(forKey: "username")
                                userDefault.removeObject(forKey: "password")
                            }
                            self.performSegue(withIdentifier: "CustomerSegue", sender: self)
                            
                        }
                    }
                }
            }
            
            
            
            
            
            
        }
        if flag != true{
            let alert=UIAlertController(title: "Error", message: "username/password is incorrect", preferredStyle: UIAlertController.Style.alert)
            let actionok=UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(actionok)
            self.present(alert,animated: true,completion: nil)
        }
        
        
    }
    @IBOutlet weak var switchRememberme: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
 


    



}
    @IBAction func unwindLogoutFromAnyScreen(storyboardSegue:UIStoryboardSegue){
        let s=storyboardSegue.source as! BillListTableViewController
    }
    
}
