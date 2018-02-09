//
//  ViewController.swift
//  3 - Calculator App
//
//  Created by Daniel García Molero on 09/02/2018.
//  Copyright © 2018 Daniel García Molero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var memory = 0
    var numericInput = false
    var operation = ""
    
    @IBOutlet weak var calcScreen: UITextField!
    
    @IBAction func clearButton(_ sender: UIButton) {
        memory = 0
        numericInput = true
        operation = ""
        calcScreen.text = "0"
    }
    @IBAction func butAdd(_ sender: UIButton) {
        numericInput = false
        operation = "+"
        memory = Int(calcScreen.text!)!
    }
    @IBAction func butSub(_ sender: UIButton) {
        numericInput = false
        operation = "-"
        memory = Int(calcScreen.text!)!
    }
    @IBAction func butMul(_ sender: UIButton) {
        numericInput = false
        operation = "x"
        memory = Int(calcScreen.text!)!
    }
    @IBAction func butDiv(_ sender: UIButton) {
        numericInput = false
        operation = "/"
        memory = Int(calcScreen.text!)!
    }
    @IBAction func butEqu(_ sender: UIButton) {
        if(operation == "+") {
            calcScreen.text = String(memory + Int(calcScreen.text!)!)
        } else if (operation == "-") {
            calcScreen.text = String(memory - Int(calcScreen.text!)!)
        } else if (operation == "x") {
            calcScreen.text = String(memory * Int(calcScreen.text!)!)
        } else if (operation == "/") {
            calcScreen.text = String(memory / Int(calcScreen.text!)!)
        }
    }
    
    //if(sender.titleLabel?.text == "8") {}
    //To make all buttons into a single function.
    //Ctrl + Drag all buttons into a single function and use the above code to get the button name!!!
    @IBAction func but0(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 0)
    }
    @IBAction func but1(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 1)
    }
    @IBAction func but2(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 2)
    }
    @IBAction func but3(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 3)
    }
    @IBAction func but4(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 4)
    }
    @IBAction func but5(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 5)
    }
    @IBAction func but6(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 6)
    }
    @IBAction func but7(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 7)
    }
    @IBAction func but8(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 8)
    }
    @IBAction func but9(_ sender: UIButton) {
        if(!numericInput) {
            calcScreen.text = "0"
        }
        numericInput = true;
        calcScreen.text = String((Int(calcScreen.text!)! * 10) + 9)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calcScreen.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

