
import Foundation

class RestaurantData {
    
    private var foodItems: [Item]!
    private var cartItems: [Item]!
    
    class func sharedData() -> RestaurantData {
        
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: RestaurantData? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = RestaurantData()
        }
        return Static.instance!
    }
    init() {
        foodItems = foodItemNames.map({ (foodName) -> Item in
            return Item(itemName: foodName, itemPrice: Int(arc4random_uniform(100)));
        })
        cartItems = []
    }
    
    let foodItemNames = ["Pav Bhaji","Idli","Masala Dosa","Pani Puri","Bhel","Roti Sabzi","Raj Kachori","Subway Sandwich","Kadhi Chaval","Dal Makhani","Plain Dal","Ice cream","Sheera","Brownie","Cold Coffee","Lime Juice","Filter Coffee","Masala Chai"]
    
    internal func getFoodItems () -> [Item] {
        return foodItems;
    }
    
    internal func addToCart(item: Item) {
        cartItems.append(item)
    }
    
    internal func getCartItems() -> [Item] {
        return cartItems
    }
}
