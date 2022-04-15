//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
        
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
//    let eggTimes = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    let eggTimes = ["Soft" : 3, "Medium" : 6, "Hard" : 10 ]
    var secondsRemaining = 30
    

    var timer =  Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HELLO")


        
        
        
    }


    @IBOutlet weak var Label: UILabel!
    
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
//        print("David is dumb")
//        print(sender.currentTitle!)
//        print("before dic")
//        print(eggTimes[hardness]!)
//        print("after dic")
        timer.invalidate()
        
        switch hardness{
            
        case "Soft":    print(eggTimes["Soft"]!)
            secondsRemaining = eggTimes["Soft"]!
            
        case "Medium":  print(eggTimes["Medium"]!)
            secondsRemaining = eggTimes["Medium"]!
            
        case "Hard":    print(eggTimes["Hard"]!)
            secondsRemaining = eggTimes["Hard"]!
            
        default: print ("Error")
        }
        
        if (hardness == "Soft"){
            print(eggTimes["Soft"]!)
        }
        
        if (hardness == "Medium"){
            print(eggTimes["Medium"]!)
        }
        
        if (hardness == "Hard"){
            print(eggTimes["Hard"]!)
        }
        
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
             if self.secondsRemaining > 0 {
                 print ("\(self.secondsRemaining) seconds")
                 self.secondsRemaining -= 1
                 self.Label.text = "fuck you, there are "+String(self.secondsRemaining) + " seconds left"
             } else {
                 Timer.invalidate()
                 self.Label.text = "fuck you"
             }
         }
        
    }
    
}
