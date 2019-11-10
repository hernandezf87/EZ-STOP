//
//  ThirdViewController.swift
//  STOP E-Z
//
//  Created by Mac User on 7/15/19.
//  Copyright © 2019 Frank. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var thumbsUpPulseView: UIImageView!
    
    var layer: CALayer {
        
        return thumbsUpPulseView.layer
    }
    
   
    @IBOutlet weak var greatJobTextField: UITextField!
    
    let goodJobWords = ["GOOD!!",
                        "THANK YOU!",
                        "KEEP GOING",
                        "YOU ARE DOING GREAT!",
                        " "]
    
    var goodWordsselected: String?
    
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //thumbsUpPulseView.layer.cornerRadius = thumbsUpPulseView.frame.size.width
        
        setUpLayer()
        createThumbsUpWordPicker()
        createToolbar()
    }
   
    @IBAction func toHomeButtonExit(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "exitToHmeButton", sender: self)
    }
    
    @IBAction func smallYellowButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toSecondView", sender: self)
    }
    
    @IBAction func smallRedButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toFirstView", sender: self)
    }
    func setUpLayer() {
        layer.shadowOpacity = 30.0
        layer.shadowRadius = 40.0
        layer.shadowColor = UIColor.green.cgColor
        
    }

func createThumbsUpWordPicker() {
    
    let thumbsupwordPicker = UIPickerView()
    thumbsupwordPicker.delegate = self
    
    greatJobTextField.inputView = thumbsupwordPicker
    
    //Customizations
    thumbsupwordPicker.backgroundColor = .black
    
}
    func createToolbar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
         //let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ThirdViewController.dismissKeyboard))
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        
        view.addGestureRecognizer(tap)
        
        //toolBar.setItems([doneButton], animated: true)
        toolBar.isUserInteractionEnabled = true
        greatJobTextField.inputAccessoryView = toolBar
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}
extension ThirdViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return goodJobWords.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return goodJobWords[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        goodWordsselected = goodJobWords[row]
        greatJobTextField.text = goodWordsselected
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
        
        label.text = goodJobWords[row]
        
        return label
        
        
    }
}











    
    
    

