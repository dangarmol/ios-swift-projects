//
//  DraggedImageView.swift
//  6 - Dragging Image
//
//  Created by Daniel García Molero on 23/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {

    var startLocation: CGPoint? //Global variable and type (point in the screen).
    
    var myGoogleDelegate: subviewDelegate?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //When touch begins, records the initial position.
        startLocation = touches.first?.location(in:self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //When touch moves, find the coordinates of the current touch and set the center position of the image.
        let currentLocation = touches.first?.location(in:self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        //self.center = CGPointMake(self.center.x + dx, self.center.y + dy) //Old Swift Version, new version below.
        self.center = CGPoint(x: self.center.x + dx, y: self.center.y + dy)
        
        //This function can be called thanks to the delegate
        self.myGoogleDelegate?.refreshCoordinates()
    }
}
