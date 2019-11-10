//
//  SecondViewController.swift
//  STOP E-Z
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Francisco. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var cautionPulseView: UIImageView!
    
    var layer: CALayer {
        
        return cautionPulseView.layer
    }
    
    @IBOutlet weak var favoriteWordTextField: UITextField!
    
    let words = ["CAUTION!",
                 "SLOW!",
                 "HELP!",
                 " "]
    
    var selectWord: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLayer()
        createWordPicker()
        createToolbar()
    }
        //buttons section
    @IBAction func homeButtonPressed() {
        performSegue(withIdentifier: "backToHomeView", sender: self)
    }
    
    @IBAction func navGreenButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toThumbsUpView", sender: self)
    }
    
    @IBAction func navRedButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toStopView", sender: self)
    }
    
    func setUpLayer() {
        layer.shadowOpacity = 30.0
        layer.shadowRadius = 40.0
        layer.shadowColor = UIColor.orange.cgColor
        
    }
    
    func createWordPicker() {
        
        let wordPicker = UIPickerView()
        wordPicker.delegate = self
        
        favoriteWordTextField.inputView = wordPicker
        
        //Customizations
        wordPicker.backgroundColor = .black
        
    }
    
    func createToolbar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        //let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(SecondViewController.dismissKeyboard))
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        
        view.addGestureRecognizer(tap)
        
        //toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        favoriteWordTextField.inputAccessoryView = toolBar
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension SecondViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return words.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return words[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectWord = words[row]
        favoriteWordTextField.text = selectWord
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
        label.font = UIFont(name: "Verdana", size: 20)
        
        label.text = words[row]
        
        return label
        
    }
}





    




