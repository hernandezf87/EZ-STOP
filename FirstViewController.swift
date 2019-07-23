//
//  FirstViewController.swift
//  EZ-STOP
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Frank. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed() {
        
        performSegue(withIdentifier: "toMainViewController", sender: self)
    }
    
    @IBAction func greenButtonPressed() {
        
        performSegue(withIdentifier: "toGreatJobViewController", sender: self)
    }
    
    @IBAction func yellowButtonPressed() {
        
        performSegue(withIdentifier: "toYellowViewController", sender: self)
    }

}
