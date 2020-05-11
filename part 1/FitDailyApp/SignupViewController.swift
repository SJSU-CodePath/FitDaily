//
//  SignupViewController.swift
//  FitDailyApp
//
//  Created by Roneil Sembrano on 4/30/20.
//  Copyright © 2020 Kevin Grewal. All rights reserved.
//

import UIKit
import Parse

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func onSignup(_ sender: Any) {
        // initialize a user object
           let newUser = PFUser()
           // set user properties\
           newUser.username = usernameField.text
           newUser.password = passwordField.text

           
           // call sign up function on the object
           newUser.signUpInBackground { (success: Bool, error: Error? ) in
               if let error = error {
                   print(error.localizedDescription)
               }
               else if newUser.username!.isEmpty || newUser.password!.isEmpty {
                   
                   let alertController = UIAlertController(title: "Error", message: "Username/Password not entered", preferredStyle: .alert)
                                  let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                                  }
                               alertController.addAction(cancelAction)
                                  self.present(alertController, animated: true)
               } else {
                   print("User Registered successfully")
                        newUser.saveInBackground()
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
