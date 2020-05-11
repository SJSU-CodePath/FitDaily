//
//  profileViewController.swift
//  FitDailyApp
//
//  Created by Roneil Sembrano on 4/30/20.
//  Copyright © 2020 Kevin Grewal. All rights reserved.
//

import UIKit
import Parse

class profileViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var bodyweightLabel: UILabel!
    @IBOutlet weak var feetLabel: UILabel!
    @IBOutlet weak var inchesLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderSegmentedLabel: UISegmentedControl!
    @IBOutlet weak var activitySegmentedLabel: UISegmentedControl!

    var temp = ""
    let userData = PFObject(className: "userData")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let user = userData["user"] as! PFUser
        
        //nameLabel.text = userData["name"] as? String
       // bodyweightLabel.text = userData["bodyWeight"] as! String
       // feetLabel.text = userData["feet"] as! String
       // inchesLabel.text = userData["inches"] as! String
       // ageLabel.text = userData["age"] as! String


//        temp = userData["gender"] as! String
//        if(temp == "Male") {
//            genderSegmentedLabel.selectedSegmentIndex = 0
//        }
//        else if(temp == "female") {
//            genderSegmentedLabel.selectedSegmentIndex = 1
//        }
//        else if(temp == "Other") {
//            genderSegmentedLabel.selectedSegmentIndex = 2
//        }
//        
//        temp = userData["activityLevel"] as! String
//        if(temp == "Low") {
//            activitySegmentedLabel.selectedSegmentIndex = 0
//        }
//        else if(temp == "Medium") {
//            activitySegmentedLabel.selectedSegmentIndex = 1
//        }
//        else if(temp == "High") {
//            activitySegmentedLabel.selectedSegmentIndex = 2
//        }
  
            

        // Do any additional setup after loading the view.
    }
    
     var users = [PFObject]()
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        //another query which queries
        let query = PFQuery(className: "userData")//gets array of user data
        query.includeKeys(["name", "user.username"])
        //query.limit = 20
        
        query.findObjectsInBackground { (users, error) in
                if users != nil {
                self.users = users!
               //self.feedTableView.reloadData()
                    //print out the users
                    print("users are...%@", self.users)
                    
                    for user in self.users {
                        //profileViewController.reloadData()
                        let currentUser = PFUser.current()
                        print(" Current user name : " + (currentUser!.username)! as String)
                        
                        print(user["username"] as! String)
                        
                        if ((currentUser!.username)! as String) == (user["username"] as! String) {
                            
                        print("Found the object id")
                            self.usernameLabel.text = currentUser?.username
                            self.nameLabel.text = user["name"] as? String
                            
                            self.bodyweightLabel.text = user["bodyWeight"] as? String
                            self.feetLabel.text = user["feet"] as? String
                            self.inchesLabel.text = user["inches"] as? String
                            self.ageLabel.text = user["age"] as? String
                            
                            
                            
                    } else{
                        print("did not find it")
                        }
                }
            }
        }
        
        
        
        
        //get specific user
       /* let query = PFQuery(className:"userData")
        query.whereKey("User", equalTo:"Sean Plott")
        query.findObjectsInBackground { (objects: [PFObject]?, error: Error?) in
            if let error = error {
                // Log details of the failure
                print(error.localizedDescription)
            } else if let objects = objects {
                // The find succeeded.
                print("Successfully retrieved \(objects.count) scores.")
                // Do something with the found objects
                for object in objects {
                    print(object.objectId as Any)
                }
            }
        }*/
    }
    


    @IBAction func onLogout(_ sender: Any) {
        self.performSegue(withIdentifier: "logoutSegue", sender: nil)
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     
     
     
     query.findObjectsInBackground { (users, error) in
             if users != nil {
             self.users = users!
            //self.feedTableView.reloadData()
                 //print out the users
                 print("users are...%@", self.users)
                 for(PFObject user in self.users){
                     
                     if(PFUser.current()?.objectId == user.user.objectId){
                         textlabel.text = ...
                     }
                     
                 }
         }
     }
    */

}
