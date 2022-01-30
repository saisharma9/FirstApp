//
//  ViewController.swift
//  Mantha_SaiSharma
//
//  Created by Mantha,Sai Sharma on 1/29/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstNameTextField: UITextField!

    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBAction func onClickOfSubmit(_ sender: UIButton)
    {
        var firstname:String = firstNameTextField.text!
        var lastname:String = lastNameTextField.text!
        
        detailsLabel.text = "Details"
        fullNameLabel.text = "Full Name: \(firstname), \(lastname)"
        initialsLabel.text = "Initials: \(firstname[firstname.startIndex])\(lastname[lastname.startIndex])"
    }
    
    @IBAction func onClickofReset(_ sender: UIButton)
    {
        firstNameTextField.text = nil
        lastNameTextField.text = nil
        detailsLabel.text = nil
        fullNameLabel.text = nil
        initialsLabel.text = nil
        firstNameTextField.becomeFirstResponder()
        
    }
    
}

