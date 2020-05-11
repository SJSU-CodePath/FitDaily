//
//  RecipeCell.swift
//  FitDailyApp
//
//  Created by Qingzhi Luo on 5/4/20.
//  Copyright © 2020 Kevin Grewal. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var CaloriesLabel: UILabel!
    
    struct foodLabel: Decodable{
        var name: String
    }
    
    struct foodNutrients: Decodable{
        var calories: String
        var fat: String
        var protein: String
        var carbs: String
        var fiber: String

    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
