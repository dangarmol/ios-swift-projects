//
//  DraggedImageView.swift
//  6 - Dragging Image
//
//  Created by Daniel García Molero on 23/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {

    var startLocation: CGPoint? //Global variable and type
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation = touches.first?.location(in:self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation = touches.first?.location(in:self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        //self.center = CGPointMake(self.center.x + dx, self.center.y + dy) //Old Swift Version
        self.center = CGPoint(x: self.center.x + dx, y: self.center.y + dy)
    }
}
