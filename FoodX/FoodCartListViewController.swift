
import Foundation
import UIKit

class FoodCartListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var checkoutButton : UIButton!
    var restaurantDatasource : RestaurantTableViewDatasource!
    
    override func viewDidAppear(animated: Bool) {
        restaurantDatasource = RestaurantTableViewDatasource(foodItems: RestaurantData.sharedData().getCartItems())
        self.tableView.dataSource = restaurantDatasource
        self.tableView.reloadData()
    }
    
    @IBAction func checkoutButtonClicked(sender: AnyObject) {
        NSLog("Checkout clicked")
    }
    
}
