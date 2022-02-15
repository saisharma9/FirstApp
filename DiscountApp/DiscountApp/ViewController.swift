//
//  ViewController.swift
//  DiscountApp
//
//  Created by Mantha,Sai Sharma on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var costPrice: UITextField!
    
    
    @IBOutlet weak var discountRate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBAction func submitButton(_ sender: UIButton)
    {
        var enteredAmount = Int(costPrice.text!)
        var enteredRate = Int(discountRate.text!)
        
       
       var label = Int((enteredAmount!)-((enteredRate!/100)*enteredAmount!))
        
        displayLabel.text = "The new amount is \(label)"
        
        
    }
    
}

