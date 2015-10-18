
import Foundation
import UIKit

class AddressViewController: UIViewController {
    @IBOutlet var nameTextField : UITextField!
    @IBOutlet var addressTextView : UITextView!
    @IBOutlet var payByCreditCart : UIButton!
    @IBOutlet var payByCash : UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        self.nameTextField.accessibilityLabel = "nameTextField"
        self.addressTextView.accessibilityLabel = "addressTextView"
        self.payByCreditCart.accessibilityLabel = "creditCardButton"
        self.payByCash.accessibilityLabel = "cashButton"
    }
}
