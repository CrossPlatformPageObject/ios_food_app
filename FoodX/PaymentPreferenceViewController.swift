
import UIKit

class PaymentPreferenceViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var paymentPreference: UIPickerView!
    let paymentOptions = ["Cash On delivery", "Credit Card"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.paymentPreference.delegate = self
        self.paymentPreference.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    @IBAction func showPaymentPage(sender: AnyObject) {
        
        let selectedIndex = self.paymentPreference.selectedRowInComponent(0)
        if(paymentOptions[selectedIndex] == "Cash On delivery") {
            self.performSegueWithIdentifier("cash", sender: nil)
            
        } else {
            self.performSegueWithIdentifier("credit", sender: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return paymentOptions.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return paymentOptions[row]
    }
}
