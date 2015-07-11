//
//  CategoryTabelViewCellData.swift
//  iShare
//
//  Created by Jiankai Sun on 7/1/15.
//  Copyright (c) 2015 Jiankai Sun. All rights reserved.
//
import UIKit

class CategoryTabelViewCellData: NSObject {
    var category_image: String
    var category_name: String
    init(category_image: String, category_name: String){
        self.category_image = category_image
        self.category_name = category_name
    }
}

