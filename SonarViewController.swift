//
//  SonarViewController.swift
//  multiProjects
//
//  Created by Bayan on 6/26/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class SonarViewController: UIViewController {
    
    @IBOutlet weak var rangeValuesLabel: UILabel!
    @IBOutlet weak var multipliedRangeValue: UILabel!
    @IBOutlet weak var sonarActivityLabel: UILabel!
    
    @IBOutlet weak var treasureFound: UIImageView!
    
    var currentRange = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rangeValuesLabel.text = "\(currentRange)"
        multipliedRangeValue.text = "5"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func increaseRangebuttonTapped(_ sender: UIButton) {
        
        if (currentRange < 5) && currentRange > 0 {
            currentRange += 1
        } else {
            currentRange = 5
        }
        
        rangeValuesLabel.text = "\(currentRange)"
        
        multipliedRangeValue.text = "\(currentRange * 5)"
    }
    
    
    @IBAction func fireSonarButtonTapped(_ sender: UIButton) {
    
        for times in 1...currentRange {
            sonarActivityLabel.text = "Sonar fired \(times)"
            print("fired \(times)")
        }
        
        if (currentRange * 5) > 20{
            treasureFound.image = UIImage(named: "kingTut")
            treasureFound.isHidden = false

        } else if (currentRange * 5) > 15{
            treasureFound.isHidden = false
            treasureFound.image = UIImage(named: "helmet")
        }
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
