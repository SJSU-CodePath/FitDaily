//
//  FoodDiaryViewController.swift
//  FitDailyApp
//
//  Created by Qingzhi Luo on 5/4/20.
//  Copyright © 2020 Kevin Grewal. All rights reserved.
//

import UIKit

class FoodDiaryViewController: UIViewController {
    
    @IBOutlet weak var searchField: UITextField!
    
    @IBAction func onSearch(_ sender: Any) {
        
        
    }
    
    
    var recipe = [[String:Any]]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeCell
            
            return cell
        }
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//            return 1;
//    }
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
