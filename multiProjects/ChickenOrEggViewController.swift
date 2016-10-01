//
//  ChickenOrEggViewController.swift
//  multiProjects
//
//  Created by Bayan on 6/25/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class ChickenOrEggViewController: UIViewController {

    @IBOutlet weak var chickenSwitch: UISwitch!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func findOutTapped(_ sender: UIButton) {
        
        
        var chickenside: Bool?
        chickenside = chickenSwitch.isOn
        
        let egg: Bool = chickenside ?? true
        
        let result = egg ? "egg" : "chicken"
        resultLabel.text = result
        
        
        
        //let eggSide = chickenSwitch.on
        //let result = eggSide ? "egg" : "chicken"
        //resultLabel.text = result
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
