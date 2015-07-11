//
//  ViewController.swift
//  iShare
//
//  Created by Jiankai Sun on 6/29/15.
//  Copyright (c) 2015 Jiankai Sun. All rights reserved.
//

import UIKit

var images: [String] = []
var categorys: [String] = []
var skills: [String] = []
var availabs: [String] = []
var ratings: [String] = []
class DiscoverViewController: UIViewController, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categorys = ["Sports", "Study", "Playing", "Working", "More Categories"]
        images = ["set","sina","twitter","start","star"]
        skills = ["Basketball","Chinese","Swimming","Cooking","Driving"]
        availabs = ["available","available","available","available","available"]
        
        ratings = ["☆☆☆☆","☆☆☆","☆☆☆☆","☆☆☆","☆☆☆"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var CategoryTableView: UITableView!
    
    @IBOutlet weak var DiscoverTeacherTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if(tableView == self.CategoryTableView){
            return 5
        }
        else {
            return 5
        }
        
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        if(tableView == self.CategoryTableView){
            let cell = self.CategoryTableView.dequeueReusableCellWithIdentifier("categoryTableViewCell") as! UITableViewCell
            var image = cell.viewWithTag(101) as! UIImageView
            var category_label = cell.viewWithTag(102) as! UILabel
            image.image = UIImage(named: images[indexPath.row])
            category_label.text = categorys[indexPath.row]
        
            return cell
        }
        else {
            let cell = self.DiscoverTeacherTableView.dequeueReusableCellWithIdentifier("DiscoverTeacherTableViewCell") as! UITableViewCell
            var image = cell.viewWithTag(201) as! UIImageView
            var skill = cell.viewWithTag(202) as! UILabel
            var availableornot = cell.viewWithTag(203) as! UILabel
            var rating = cell.viewWithTag(204) as! UILabel
            
            image.image = UIImage(named: images[indexPath.row])
            skill.text = skills[indexPath.row]
            availableornot.text = availabs[indexPath.row]
            rating.text = ratings[indexPath.row]
            
            
            return cell
        }
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int // Default is 1 if not implemented
     {
        return 2
    }
}

