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
    let eggTimes = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    var secondsRemaining = 30
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HELLO")


        
        
        
    }


    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
//        print("David is dumb")
//        print(sender.currentTitle!)
//        print("before dic")
//        print(eggTimes[hardness]!)
//        print("after dic")
        
        
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
        
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
             if self.secondsRemaining > 0 {
                 print ("\(self.secondsRemaining) seconds")
                 self.secondsRemaining -= 1
             } else {
                 Timer.invalidate()
             }
         }
        
    }
    
}
