//
//  SuggController.swift
//  MovingPattern
//
//  Created by nd282 on 4/20/18.
//  Copyright © 2018 nd282. All rights reserved.
//

import UIKit
class SuggController:UIViewController{

    @IBOutlet weak var leftCal: UILabel!
    @IBOutlet weak var leftSug: UILabel!
    var cal = 0.0
    var runSteps = 0
    var walkSteps = 0
    var weight = 0.0
    @IBOutlet weak var clNum: UILabel!
    @IBAction func backToMain(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    override func viewDidLoad() {
        let runcal = (Double(runSteps)*3.75*weight/(1.75*3600))
        let walkcal = (Double(walkSteps)*10.8*weight/(3*100000))
        cal = walkcal + runcal
        clNum.text = String(format: "%.2f", cal) + " cal"
        if(runcal > 300){
            leftSug.text = "Good job! You have consumed 300 calories through running"
            leftCal.text = ""
        }else{
            leftSug.text = "Keep going! Run for your health!"
            leftCal.text = String(format: "%.2f", 300-runcal) + " cal"
        }
    }
}
