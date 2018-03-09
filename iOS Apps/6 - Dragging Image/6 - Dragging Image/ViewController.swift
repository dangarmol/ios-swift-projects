//
//  ViewController.swift
//  6 - Dragging Image
//
//  Created by Daniel García Molero on 23/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func refreshCoordinates()
}

class ViewController: UIViewController, subviewDelegate {

    @IBOutlet weak var xDisplay: UITextField!
    
    @IBOutlet weak var yDisplay: UITextField!
    
    @IBOutlet weak var googleDragImage: DraggedImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        googleDragImage.myGoogleDelegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func refreshCoordinates() {
        xDisplay.text = "x coordinate: " + googleDragImage.center.x.description
        yDisplay.text = "y coordinate: " + googleDragImage.center.x.description
    }
}

