//
//  ViewController.swift
//  FitDailyApp
//
//  Created by Kevin Grewal on 4/29/20.
//  Copyright © 2020 Kevin Grewal. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func onLogin(_ sender: Any) {
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""

        PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
             if let error = error {
               print("User log in failed: \(error.localizedDescription)")
                let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                       let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                       }
                    alertController.addAction(cancelAction)
                       self.present(alertController, animated: true)

             }
             else if username.isEmpty || password.isEmpty {
                 let alertController = UIAlertController(title: "Error", message: "Username/Password not entered", preferredStyle: .alert)
                                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                                }
                             alertController.addAction(cancelAction)
                                self.present(alertController, animated: true)
             }
             else {
               print("User logged in successfully")
               self.performSegue(withIdentifier: "profileSegue", sender: nil)
             }
          }
    }//end of onsignin
    
    @IBAction func onSignup(_ sender: Any) {
        self.performSegue(withIdentifier: "signupSegue", sender: nil)
    }
    
    
}

