//
//  UIPickerViewController.swift
//  multiProjects
//
//  Created by Bayan on 8/15/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit
import Foundation

class UIPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var selectionLabel: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let pickerData = ["Skyline", "Supra", "NSX"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        selectionLabel.text = "See here"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectionLabel.text = "Your favorite car is the \(pickerData[row])"
    }
    
    
}
