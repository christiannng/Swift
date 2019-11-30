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
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["soft": 300, "medium": 420, "hard": 720]
    
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer();
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle
        
        timer.invalidate() //Make sure only 1 timer run at a time
        progressBar.progress = 0.0
        secondsPassed = 0
        lblTitle.text = hardness
        
        
        totalTime = eggTimes[(hardness?.lowercased())!]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
//        if(hardness != nil){
//            print(eggTimes[hardness!]!)
//        }
            
//        if hardness == "soft" {
//            print("You chose soft")
//        }
//        else if hardness == "medium"{
//            print("You chose medium")
//        }
//        else {
//            print("You chose hard")
//        }
        
    }
    
    @objc func updateTimer(){
        
        progressBar.progress = Float(secondsPassed) / Float(totalTime)
        
        if(secondsPassed < totalTime){
            secondsPassed += 1
        } else{
            timer.invalidate()
            lblTitle.text = "DONE!!!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    
    
}
