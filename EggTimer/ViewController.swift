//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer!
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
    
    @IBOutlet weak var myProgressBar: UIProgressView!
    
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
        let totalSeconds = secondsRemaining
        
        self.myProgressBar.progress = 0.0
        
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
             if self.secondsRemaining > 0 {
                 print ("\(self.secondsRemaining) seconds")
                 self.secondsRemaining -= 1
                 self.Label.text = "fuck you, there are "+String(self.secondsRemaining) + " seconds left"
                 self.myProgressBar.progress = (Float(totalSeconds-self.secondsRemaining))/Float(totalSeconds)
             } else {
                 Timer.invalidate()
                 self.Label.text = "fuck you"
                 self.playSound()
             }
         }
        
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        //print(note)
                
    }
}
