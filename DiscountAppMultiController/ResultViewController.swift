//
//  ResultViewController.swift
//  DiscountAppMultiController
//
//  Created by Mantha,Sai Sharma on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var EnteredAmountOutlet: UILabel!
    
    
    @IBOutlet weak var EnteredDiscountOutlet: UILabel!
    
    @IBOutlet weak var PriceAfterDiscOutlet: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        EnteredAmountOutlet.text! = EnteredAmountOutlet.text! + amount
        
        EnteredDiscountOutlet.text! = EnteredDiscountOutlet.text! + discRate
        
        PriceAfterDiscOutlet.text! = PriceAfterDiscOutlet.text! + priceAfterDisc
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
