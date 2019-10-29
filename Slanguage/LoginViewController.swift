//
//  LoginViewController.swift
//  Project 3 CS441
//
//  Created by Dylan Telson on 10/29/19.
//  Copyright © 2019 Dylan Telson. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet weak var email : UITextField!
    @IBOutlet weak var pass : UITextField!
    
    @IBAction func loginClicked(_ sender: Any) {
        Auth.auth().signIn(withEmail: email.text!, password: pass.text!) { (user, error) in
            if error == nil{
                let languageSelect = self.storyboard?.instantiateViewController(withIdentifier: "TabController") as! UITabBarController
                self.present(languageSelect, animated: true, completion: nil)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
    }
}