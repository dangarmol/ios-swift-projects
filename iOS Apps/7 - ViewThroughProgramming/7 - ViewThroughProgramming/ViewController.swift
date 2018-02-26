//
//  ViewController.swift
//  7 - ViewThroughProgramming
//
//  Created by Daniel García Molero on 26/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black //To make background black and check car transparency.
        
        //Create a new UIImageView from scratch
        var carView = UIImageView(image: nil)
        //Assign an image to the image view
        carView.image = UIImage(named: "car1.png")
        //Assign the size and position of the image view
        carView.frame = CGRect(x:100, y: 100, width: 30, height: 50)
        //Add the image view to the main view
        self.view.addSubview(carView)
        
        //Create a new image view and assign an image
        var roadView = UIImageView(image: UIImage(named: "road1.png"))
        //Make this image view fulfil the screen
        roadView.frame = UIScreen.main.bounds
        //Add the image view to the main view
        self.view.addSubview(roadView)
        
        //Bring the car image subview forward (otherwise covered by the road and not visible)
        self.view.bringSubview(toFront: carView)
        
        //Remove carView from the main view
        //carView.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

