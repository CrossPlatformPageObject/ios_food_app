
import Foundation
import UIKit

class FoodDetailViewController: UIViewController {
    
    internal var item : Item!
    
    @IBOutlet weak var foodTitle: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    override func viewDidLoad() {
        self.title = item.itemName
        self.foodTitle.text = item.itemName
        self.foodTitle.accessibilityLabel = "Title"
    }
    
    @IBAction func addToCartButtonPressed(sender: AnyObject) {
        RestaurantData.sharedData().addToCart(item)
    }
}
