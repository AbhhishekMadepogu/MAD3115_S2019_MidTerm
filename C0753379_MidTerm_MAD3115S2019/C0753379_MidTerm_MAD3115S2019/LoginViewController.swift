//
//  ViewController.swift
//  C0753379_MidTerm_MAD3115S2019
//
//  Created by Pat abhishek on 2019-07-11.
//  Copyright © 2019 Pat abhishek. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btnLogin(_ sender: UIButton) {
    }
    @IBOutlet weak var switchRememberme: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        func readPlistFile()
        {
            let plist=Bundle.main.path(forResource: "UserInfo", ofType: "plist")
            if let dict = NSDictionary(contentsOfFile: plist!)
            {
                let users = dict["Users"] as? [[String:Any]]
                for user in users!{
                    let username=user["username"] as! String
                    let password=user["password"] as! String
                    self.
                   
                    }
                    
                }
            }
        }
    }
      func readPlistFile()
        {
        let plist=Bundle.main.path(forResource: "UserInfo", ofType: "plist")
            if let dict = NSDictionary(contentsOfFile: plist!)
            {
            let users = dict["Users"] as? [[String:Any]]
                for user in users!{
                    let username=user["username"] as! String
                    let password=user["password"] as! String
                    
    
                }
            }
    }
    


}

