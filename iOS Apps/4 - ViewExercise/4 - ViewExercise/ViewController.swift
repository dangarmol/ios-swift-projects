//
//  ViewController.swift
//  4 - ViewExercise
//
//  Created by Daniel García Molero on 23/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
        textField.text = "Enter your name here."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
