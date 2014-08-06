//
//  ViewController.swift
//  01Homework
//
//  Created by Nathan Birkholz on 8/5/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var mySlider: UISlider!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        mySwitch.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TouchedLogMe(sender: UIButton) {
        [println("You Touched Me")]
    }



    
    @IBAction func mySwitch(sender: UISwitch) {
        [println("Switch Has Been Toggled:")]
        
        
        if mySwitch.on {
            println("Switch is on")
        } else {
            println("Switch is off")
        }
    }

    @IBAction func mySlider(sender: UISlider) {
        
        var sliderValue = (self.mySlider.value)
        
        var roundValue: Float = (round(sliderValue * 10.0) / 10.0)
        
        self.mySlider.value = roundValue
        
//        NSLog("The value of the slider is now\(sliderValue)")
//        NSLog("The rounded value of the slider is now\(roundValue)")
        
        if (roundValue > 0.5) {
            println("The slider is greater than .5")
        } 
    }
    

    
    
}

