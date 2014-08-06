//
//  ExtraCreditViewController.swift
//  01Homework
//
//  Created by Nathan Birkholz on 8/6/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit

class ExtraCreditViewController: UIViewController {

    var numberOfClicks: Int = 0
    @IBOutlet weak var myText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didClickButton(sender: UIButton) {
        if numberOfClicks == 5 {
            performSegueWithIdentifier("segueBack", sender: self)
        } else {
        numberOfClicks += 1
            
            if numberOfClicks == 1 {
                        println("\(numberOfClicks)")
                        myText2.text = "Hmmm, that didn't do it, click the button again!"
                    } else if numberOfClicks == 2 {
                        println("\(numberOfClicks)")
                        myText2.text = "Uhhhh.... I guess try again."
                    } else if numberOfClicks == 3 {
                        println("\(numberOfClicks)")
                        myText2.text = "Hmmm... Maybe one more?"
                    } else if numberOfClicks == 4 {
                        println("\(numberOfClicks)")
                        myText2.text = "We're trapped!!!"
                    } else {
                        println("\(numberOfClicks)")
                        myText2.text = "OH GOD, WE'RE ON FIRE!!!"
                        self.view.backgroundColor = UIColor.orangeColor()
                    }
        }
    }
    
    
    


}