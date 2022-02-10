//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Mantha,Sai Sharma on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    
    @IBOutlet weak var crsNumber: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var semOffered: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses=[
    ["img01","44555","Network Security","Fall 2022"],
    ["img02","44643","IOS","Spring 2022"],
    ["img03","44646","Streaming Data","Summer 2022"]
                ]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the course details(image,crsnumber,ttile,sem) of the first(0th index) element
        
        updateUI(imageNumber);
        
        //previous button is disabled
        previousButton.isEnabled = false
    }

    @IBAction func previousButtonClicked(_ sender: Any)
    {
        //nextbutton need to be enabled
        nextButton.isEnabled = true
        
        //update the UI
        imageNumber-=1
        updateUI(imageNumber)
        
        //if the course is at the 0th position disble previous button
        
        if(imageNumber == 0){
            previousButton.isEnabled=false
        }
    }
    
    
    @IBAction func nextButtonActioned(_ sender: Any)
    {
        //UI has to be updated with next course details
        imageNumber += 1
        updateUI(imageNumber)
        //previous button has to be enabled
        previousButton.isEnabled=true
        //after reaching end of courses next button has to be disabled
        if(imageNumber == courses.count-1)
        {
            nextButton.isEnabled=false
        }
        
    }
    
    func updateUI(_ imageNumber: Int)
    {
        imageViewOutlet.image = UIImage(named: courses[imageNumber][0])
        crsNumber.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        semOffered.text = courses[imageNumber][3]
        
    }
    
}

