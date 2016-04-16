//
//  PurchaseSummaryVC.swift
//  FoodX
//
//  Created by Priti on 4/9/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

import UIKit

class PurchaseSummaryVC: UITableViewController {
    
    var cartItems:[Item]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartItems = RestaurantData.sharedData().getCartItems()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cellIdentifier")
        
        cell.textLabel?.text =  cartItems[indexPath.row].itemName
        cell.detailTextLabel?.text = "\(cartItems[indexPath.row].itemPrice)"
        cell.textLabel?.accessibilityLabel = "ItemTitle \(indexPath.row)"
        cell.detailTextLabel?.accessibilityLabel = "ItemPrice: \(arc4random()%100)"
        return cell
    }


}
