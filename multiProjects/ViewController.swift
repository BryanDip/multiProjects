//
//  ViewController.swift
//  multiProjects
//
//  Created by Bayan on 6/24/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Switch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomColor() -> UIColor {
        let red =  CGFloat(arc4random() % 256 ) / 256
        let green = CGFloat(arc4random() % 256 ) / 256
        let blue = CGFloat(arc4random() % 256 ) / 256
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

    @IBAction func colorChangeTapped(_ sender: UIButton) {
        
        if Switch.isOn {
            Switch.onTintColor = randomColor()
            Switch.thumbTintColor = randomColor()
        } else {
            Switch.tintColor = randomColor()
            Switch.thumbTintColor = randomColor()
        }

    }
    
    @IBAction func switchTapped(_ sender: UISwitch) {
        Switch.onTintColor = UIColor.clear
        Switch.tintColor = UIColor.darkGray
    }
    
}


