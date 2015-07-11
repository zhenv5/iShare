//
//  LearnViewController.swift
//  iShare
//
//  Created by Jiankai Sun on 7/11/15.
//  Copyright (c) 2015 Jiankai Sun. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var LearnSkillTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mySkillList = [mySkills(skill_category_image: "sports", skill_category_name: "Soccer", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 4),
            mySkills(skill_category_image: "cooking", skill_category_name: "Cooking", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 7),
            mySkills(skill_category_image: "business", skill_category_name: "Investment", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 2),
            mySkills(skill_category_image: "IT", skill_category_name: "Programming", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 6),
            mySkills(skill_category_image: "IT2", skill_category_name: "Office", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 7),
            mySkills(skill_category_image: "Arts2", skill_category_name: "Muisc", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 17),
            mySkills(skill_category_image: "Arts2", skill_category_name: "Drawing", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 1.7),
            mySkills(skill_category_image: "IT", skill_category_name: "Programming", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 2.4),
            mySkills(skill_category_image: "IT2", skill_category_name: "Office", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 7),
            mySkills(skill_category_image: "Arts2", skill_category_name: "Muisc", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 7),
            mySkills(skill_category_image: "Arts2", skill_category_name: "Drawing", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "Available",skill_price: 3.6),
            mySkills(skill_category_image: "IT2", skill_category_name: "Java", skill_start_time: "2015-07-06", skill_end_time: "2015-07-29",skill_isAvailable: "UnAvailable",skill_price: 6.6)
        ]

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {   println(mySkillList.count)
        return mySkillList.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.LearnSkillTableView.dequeueReusableCellWithIdentifier("LearnTableViewCellID") as! UITableViewCell
        
        var image = cell.viewWithTag(101) as! UIImageView
        var name = cell.viewWithTag(102) as! UILabel
        var available = cell.viewWithTag(103) as! UILabel
        var price = cell.viewWithTag(104) as! UILabel
        image.image = UIImage(named: mySkillList[indexPath.row].skill_category_image)
        name.text = mySkillList[indexPath.row].skill_category_name
        available.text = mySkillList[indexPath.row].skill_isAvailable
        price.text = toString(mySkillList[indexPath.row].skill_price)
        println(mySkillList[indexPath.row].skill_price)
        return cell
    }

    
    

}
