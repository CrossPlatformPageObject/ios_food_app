//
//  RestaurantTableViewDatasource.swift
//  FoodX
//
//  Created by Tapan Thaker on 18/10/15.
//  Copyright © 2015 ThoughtWorks. All rights reserved.
//

import Foundation
import UIKit

class RestaurantTableViewDatasource: NSObject,UITableViewDataSource {
    
    private let foodItems : [Item]!
    
    init(foodItems: [Item]) {
        self.foodItems = foodItems
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cellIdentifier")
        
        cell.textLabel?.text =  foodItems[indexPath.row].itemName
        cell.detailTextLabel?.text = "\(foodItems[indexPath.row].itemPrice)"
        cell.textLabel?.accessibilityLabel = "ItemTitle \(indexPath.row)"
        cell.detailTextLabel?.accessibilityLabel = "ItemPrice: \(arc4random()%100)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return foodItems.count
    }
}
