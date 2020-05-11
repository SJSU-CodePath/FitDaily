//
//  SetdetailsViewController.swift
//  FitDailyApp
//
//  Created by Roneil Sembrano on 4/30/20.
//  Copyright © 2020 Kevin Grewal. All rights reserved.
//

import UIKit
import Parse

class SetdetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var bodyweightField: UITextField!
    
    @IBOutlet weak var feetField: UITextField!
    
    @IBOutlet weak var inchField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBOutlet weak var genderSegmentedField: UISegmentedControl!
    
    @IBOutlet weak var activitylevelSegmentedField: UISegmentedControl!
    
    @IBAction func onUpdate(_ sender: Any) {
            
            let userData = PFObject(className: "userData")
            
            userData["user"]       = PFUser.current()!
            userData["username"]       = usernameField.text!
            userData["name"]       = nameField.text!
            userData["bodyWeight"] = bodyweightField.text!
            userData["feet"]       = feetField.text!
            userData["inches"]     = inchField.text!
            userData["age"]        = ageField.text!
            
            //checks if we've actually saved to the database
            userData.saveInBackground(){ (success, error) in
                if success{
                   print("saved")
                    self.performSegue(withIdentifier: "updatedprofileSegue", sender: nil)

                } else {
                    print("error")
                }
            }
            
            //  *segmented fields goes back here later*
            
//            self.performSegue(withIdentifier: "updatedprofileSegue", sender: nil)

        }
//        switch genderSegmentedField.selectedSegmentIndex{
//        case 0: userData["gender"] = "Male"
//        case 1: userData["gender"] = "Female"
//        case 2: userData["gender"] = "Other"
//        default: break
//        }
//
//        switch activitylevelSegmentedField.selectedSegmentIndex{
//            case 0: userData["activityLevel"] = "Low"
//            case 1: userData["activityLevel"] = "Medium"
//            case 2: userData["activityLevel"] = "High"
//            default: break
//        }


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
