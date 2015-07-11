//
//  mySkills.swift
//  iShare
//
//  Created by Jiankai Sun on 7/6/15.
//  Copyright (c) 2015 Jiankai Sun. All rights reserved.
//

import UIKit

class mySkills: NSObject{

    var skill_category_image: String
    var skill_category_name: String
    var skill_start_time: String
    var skill_end_time: String
    var skill_isAvailable: String
    var skill_price: Double
    
    init(skill_category_image: String, skill_category_name: String, skill_start_time: String, skill_end_time: String,skill_isAvailable: String,skill_price: Double){
        self.skill_category_image = skill_category_image
        self.skill_category_name = skill_category_name
        self.skill_start_time = skill_start_time
        self.skill_end_time = skill_end_time
        self.skill_isAvailable = skill_isAvailable
        self.skill_price = skill_price
    }

}
