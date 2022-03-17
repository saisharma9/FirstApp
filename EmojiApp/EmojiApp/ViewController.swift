//
//  ViewController.swift
//  EmojiApp
//
//  Created by Mantha,Sai Sharma on 3/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    
    @IBOutlet weak var shakeMeOutlet: UIButton!
    
    
    @IBOutlet weak var showOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageOutlet.image = UIImage(named: "hello")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
      //Move all the components outside of the view
        
        imageOutlet.frame.origin.x = view.frame.maxX;
        
        happyOutlet.frame.origin.x = view.frame.maxX;
        
        sadOutlet.frame.origin.x = view.frame.maxX;
        
        angryOutlet.frame.origin.x = view.frame.width;
        
        shakeMeOutlet.frame.origin.x = view.frame.width;
        
    }
    
    
    @IBAction func happyButtonClicked(_ sender: UIButton)
    {
        animateImage("happy")
    }
    
    @IBAction func sadButtonClicked(_ sender: UIButton)
    {
        animateImage("sad")
    }
    
    @IBAction func angryButtonClicked(_ sender: UIButton)
    {
        animateImage("angry")
    }
    
    @IBAction func shakeMeButtonClicked(_ sender: UIButton)
    {
        animateImage("shakeMe")
        
        //Rectangle r = new Recantagle (x, y, w, h)
        
        var w = imageOutlet.frame.width
         w += 40
        var h = imageOutlet.frame.height
         h += 40
        var x = imageOutlet.frame.origin.x - 20
        
        var y = imageOutlet.frame.origin.y - 20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, animations: {
            self.imageOutlet.frame = largerFrame
        })
        
        
    }
    
    @IBAction func showButtonClicked(_ sender: UIButton)
    {
        
        UIView.animate(withDuration: 1,animations: {
            self.imageOutlet.center.x = self.view.center.x;
            self.happyOutlet.center.x = self.view.center.x;
            self.sadOutlet.center.x = self.view.center.x;
            self.angryOutlet.center.x = self.view.center.x;
            self.shakeMeOutlet.center.x = self.view.center.x;
            self.showOutlet.isEnabled = false;
        }
        )
    }//end of show button
    
    func animateImage(_ imageName: String)
    {
        UIView.animate(withDuration: 1,animations: {
            self.imageOutlet.alpha = 0; // this will make the image opaque

        })
        
        
        
        UIView.animate(withDuration: 1, delay: 0.2,animations: {
            self.imageOutlet.alpha = 1; // this will make the image transparent
            self.imageOutlet.image = UIImage(named: imageName)
        })
        
        
       
    }
}

