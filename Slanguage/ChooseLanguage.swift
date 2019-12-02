//
//  ChooseLanguage.swift
//  Project 3 CS441
//
//  Created by Dylan Telson on 10/22/19.
//  Copyright © 2019 Dylan Telson. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

class ChooseLanguage: UIViewController {
    
    //eventually have it so it automatically goes to currlang (saved in database) if currlange != "null"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func checkButtonClicked(sender: UIButton!) {
//        let learnScreen = self.storyboard?.instantiateViewController(withIdentifier: "Translate") as! Translate
//        learnScreen.currLanguage = sender.tag
//        self.present(learnScreen, animated: true, completion: nil)
        self.performSegue(withIdentifier: "languageToLearn", sender: self)
    }
    
    //temporarily have log out button on languageselect screen
    @IBAction func logout(sender: UIButton!) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        let startup = storyboard!.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = startup
    }
}
