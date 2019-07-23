//
//  ViewController.swift
//  EZ-STOP
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Frank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func stopButtonPressed() {
        
        performSegue(withIdentifier: "toFirstVieController", sender: self)
        
    }
    
    @IBAction func warningButtonPressed() {
        
        performSegue(withIdentifier: "toSecondViewController", sender: self)
        
    }
    
    @IBAction func goodJobButtonPressed() {
        
        performSegue(withIdentifier: "toThirdViewController", sender: self)
    }


}

