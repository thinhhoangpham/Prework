//
//  ViewController.swift
//  Prework
//
//  Created by Thinh Pham on 8/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0

        //Get total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip

        //Update tipAmountLabel
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total amount
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}

