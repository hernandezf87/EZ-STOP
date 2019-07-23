//
//  ThirdViewController.swift
//  EZ-STOP
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Frank. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backMainButtonPressed() {
        
        performSegue(withIdentifier: "theMainViewController", sender: self)
    }
    
    @IBAction func redPressed() {
        
        performSegue(withIdentifier: "theRedViewController", sender: self)
    }
    
    @IBAction func yellowPressed() {
        
        performSegue(withIdentifier: "theSecondViewController", sender: self)
    }

    
}
