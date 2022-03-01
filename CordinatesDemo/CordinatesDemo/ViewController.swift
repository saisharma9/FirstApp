//
//  ViewController.swift
//  CordinatesDemo
//
//  Created by Mantha,Sai Sharma on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let minx = imageViewOutlet.frame.minX
        let miny = imageViewOutlet.frame.minY
        
        print(minx,",",miny);
        
        let maxX = imageViewOutlet.frame.maxX;
        let maxy = imageViewOutlet.frame.maxY;
        print(maxX,",",maxy);
        
        let midX = imageViewOutlet.frame.midX;
        let midy = imageViewOutlet.frame.midY;
        print(midX,",",midy);

        //move the object to upper left corner (0,0)
        
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //move the object to upper right corner (314,0)
        
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //move the object to lower left corner (0,796)
        
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        //move the object to lower right corner (314,796)
        
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        //move the object to center(157,398)
        
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
        
        
    }


}

