//
//  ViewController.swift
//  calculator
//
//  Created by Dimitri Pezaris on 6/27/19.
//  Copyright © 2019 Dimitri Pezaris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var mem:Double = 0;
    var reset:Bool = true;
    var opperation =  0;
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var divide: UIButton!
    
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBAction func buttonPress(_ sender: UIButton)
    {
        if reset == true {
            label.text = ""
        }
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        reset = false
        
    
    }
    @IBAction func divide(_ sender: UIButton)
    {
        mem = numberOnScreen
        reset = true;
        opperation = sender.tag
        
    }
    @IBAction func enter(_ sender: UIButton)
    {
        if opperation == 15 {
            label.text = String(mem / numberOnScreen)
        }
        if opperation == 16 {
            label.text = String(mem * numberOnScreen)
        }
        if opperation == 11 {
            label.text = String(mem - numberOnScreen)
        }
        if opperation == 12 {
            label.text = String(mem + numberOnScreen)
        }
        numberOnScreen = Double(label.text!)!
        reset = true
    }
    
    @IBAction func clear(_ sender: UIButton) {
        label.text = "0"
        numberOnScreen = 0
        mem = 0
        reset = true
        
        
    }
    
    @IBAction func percent(_ sender: Any) {
        label.text = String(numberOnScreen * 0.01)
        numberOnScreen = Double(label.text!)!
    }
    
    @IBAction func inverse(_ sender: Any) {
        label.text = String(numberOnScreen * -1)
        numberOnScreen = Double(label.text!)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

