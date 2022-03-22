//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by Mantha,Sai Sharma on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var AmountOutlet: UITextField!
    
    
    @IBOutlet weak var DiscountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcDiscountButtonClicked(_ sender: UIButton)
    {
        var amount = Double(AmountOutlet.text!)
        var discRate = Double(DiscountRateOutlet.text!)
        
        priceAfterDiscount = amount! - (amount!*discRate!/100)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    
    {
        var transition = segue.identifier
        if transition == "resultSegue"
        {
            //make ResultViewController as destination
            var destination = segue.destination as!
            ResultViewController
            
            destination.amount = AmountOutlet.text!
            destination.discRate = DiscountRateOutlet.text!
            destination.priceAfterDisc = String(priceAfterDiscount)
            
        }
    }
    

}

