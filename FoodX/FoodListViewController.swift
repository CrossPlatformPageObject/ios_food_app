
import UIKit

class FoodListViewController: UITableViewController {
    
    var tableViewDatasource : RestaurantTableViewDatasource!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Food"
        tableViewDatasource  = RestaurantTableViewDatasource(foodItems: RestaurantData.sharedData().getFoodItems())
        self.tableView.dataSource = tableViewDatasource
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("ShowFoodDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let foodDetailViewController =  segue.destinationViewController as! FoodDetailViewController
        foodDetailViewController.item = RestaurantData.sharedData().getFoodItems()[(self.tableView.indexPathForSelectedRow?.row)!]
    }
}

