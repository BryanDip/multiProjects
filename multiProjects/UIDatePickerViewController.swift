//
//  UIDatePickerViewController.swift
//  multiProjects
//
//  Created by Bayan on 7/28/16.
//  Copyright © 2016 Bayan. All rights reserved.
//

import UIKit

class UIDatePickerViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateOnlyPicker: UIDatePicker!
    
    @IBOutlet weak var timeOnlyPicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let dateStringFormatter = DateFormatter()
        dateStringFormatter.dateFormat = "mm-dd-yyyy"
        //let formattedStartDate = dateStringFormatter.dateFromString(<#T##string: String##String#>)
        
        dateOnlyPicker.datePickerMode = UIDatePickerMode.date
        //dateOnlyPicker.date = dateStringFormatter.dateFromString("12-09-1987")!
        
        timeOnlyPicker.datePickerMode = UIDatePickerMode.time
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
