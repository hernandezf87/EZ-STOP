//
//  SecondViewController.swift
//  EZ-STOP
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Frank. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButtonPressed() {
        
        performSegue(withIdentifier: "backToHomeView", sender: self)
    }
    
    @IBAction func buttonRedPressed() {
        
        performSegue(withIdentifier: "backToRedView", sender: self)
    }
    
    @IBAction func buttonGreenPressed() {
        
        performSegue(withIdentifier: "backToGreenView", sender: self)
    }

}
