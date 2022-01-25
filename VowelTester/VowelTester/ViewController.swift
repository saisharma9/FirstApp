//
//  ViewController.swift
//  VowelTester
//
//  Created by Mantha,Sai Sharma on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton)
    {
        //read the text
        var enteredText = TextOutlet.text!
        //check the vowel
        if( enteredText.contains("a") || enteredText.contains("e") || enteredText.contains("i") || enteredText.contains("o") || enteredText.contains("u") || enteredText.contains("A") || enteredText.contains("E") || enteredText.contains("I") || enteredText.contains("O") || enteredText.contains("U"))
        {
            //display on label
            displayLabel.text = "the entered text contains vowel "
        }
        else
        {
            displayLabel.text = "the entered text does not have any vowel "
        }
}
}

