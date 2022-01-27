//
//  ViewController.swift
//  SampleCalci
//
//  Created by Mantha,Sai Sharma on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var operand1:Double = -1.1;
    var operand2:Double = -1.1;
    var calcOperator:Character = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Button1(_ sender: UIButton) {
        displayLabel.text! += "1"
        if (operand1 == -1.1){
            operand1 = 1
        }
        else{
            operand2 = 1
        }
    }
    
    
    @IBAction func Button2(_ sender: UIButton) {
        displayLabel.text! += "2"
        if (operand2 == -1.1){
            operand2 = 2
        }
        else{
            operand1 = 2
        }
    }
    
   
    @IBAction func ButtonPlus(_ sender: UIButton)
    {
        displayLabel.text! += "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    
   
    @IBAction func ButtonEquals(_ sender: UIButton)
    {
        displayLabel.text = "="
        if calcOperator == "+"{
            displayLabel.text = "\(operand1+operand2)"
        }
        else if calcOperator == "-"{
            displayLabel.text = "\(operand1-operand2)"
        }
    }
    
    @IBAction func ButtonMinus(_ sender: UIButton)
    {
        displayLabel.text! += "-"
        if calcOperator == " "{
            calcOperator = "-"
        }
    }
    
}

