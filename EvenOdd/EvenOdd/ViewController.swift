//
//  ViewController.swift
//  EvenOdd
//
//  Created by Mantha,Sai Sharma on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var enteredNumber: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton)
    {
        let num = Int(enteredNumber.text!)
        if(num!%2 == 0)
        {
            displayLabel.text = "\(num!) is even"
        }
        else
        {
            displayLabel.text = "\(num!) is odd"
        }
    }
    
    @IBOutlet weak var displayLabel: UILabel!
}


