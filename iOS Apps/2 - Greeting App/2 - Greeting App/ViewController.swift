//
//  ViewController.swift
//  2 - Greeting App
//
//  Created by Daniel García Molero on 09/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Press Ctrl + Drag to link object to code.
    /*@IBOutlet weak var nameField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        displayLabel.text = nameField.text
    }
    
    @IBOutlet weak var displayLabel: UILabel!*/
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
        helloLabel.text = "Hello, " + nameTextField.text!
    }
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

