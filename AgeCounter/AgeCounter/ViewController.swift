//
//  ViewController.swift
//  AgeCounter
//
//  Created by Harry E. Pray IV on 9/25/16.
//  Copyright © 2016 Harry E. Pray IV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var timer = Timer()
//    var timerisON = false
//
    @IBOutlet weak var calculatedAge: UILabel!
    @IBOutlet weak var chosenTime: UIDatePicker!
    @IBOutlet weak var chosenDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        timerisON = false
    }
    
    @IBAction func calculateCurrentAge(_ sender: AnyObject){
//        timerisON = true
        let chosenStamp = combineDateAndTime(chosenDate.date, chosenTime.date)
        let currentAge = calculateAge(chosenStamp , Date())
        self.calculatedAge.text = breakDownComponents(currentAge)
        
}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

