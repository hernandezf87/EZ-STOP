//
//  FirstViewController.swift
//  EZ-STOP
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Frank. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var stopPulseView: UIImageView!
    
    var layer: CALayer {
        
        return stopPulseView.layer
    }
    
    @IBOutlet weak var stopWordsTextField: UITextField!
    
    let stopWords = ["STOP!",
                     "NO!",
                     "HELP!",
                     " "]
    
    var stopWordsSelected: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLayer()
        createStopWordPicker()
        createToolbar()
    }
    
   //you can add any buttons here
    @IBAction func exitStopButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "backToHomePressed", sender: self)
    }
    
    func setUpLayer() {
        layer.shadowOpacity = 30.0
        layer.shadowRadius = 40.0
        layer.shadowColor = UIColor.black.cgColor
        
    }
    
    func createStopWordPicker() {
        
        let stopWordPicker = UIPickerView()
        stopWordPicker.delegate = self
        
        stopWordsTextField.inputView = stopWordPicker
        
        //Customizations
        stopWordPicker.backgroundColor = .black
        
    }
    
    func createToolbar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(SecondViewController.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        stopWordsTextField.inputAccessoryView = toolBar
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension FirstViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stopWords.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stopWords[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        stopWordsSelected = stopWords[row]
        stopWordsTextField.text = stopWordsSelected
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label: UILabel
        
        if let view = view as? UILabel {
            label = view
        } else {
            label = UILabel()
        }
        
        label.textColor = .green
        label.textAlignment = .center
        label.font = UIFont(name: "verdana", size: 25)
        
        label.text = stopWords[row]
        
        return label
        
    }
}











    
  


