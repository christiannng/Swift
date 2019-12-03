//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    var quizbrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UpdateUI()
        
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        let isAnswerRight = quizbrain.checkAnswer(UserAnswer: userAnswer)
        
        if isAnswerRight { sender.backgroundColor = UIColor.green }
        else { sender.backgroundColor = UIColor.red }
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func UpdateUI(){
        questionLabel.text = quizbrain.getQuestionText()
        
        //Need to fetch the choices and update the button titles using the setTitle method
        let choices = quizbrain.getChoices()
        choice1.setTitle(choices[0], for: .normal)
        choice2.setTitle(choices[1], for: .normal)
        choice3.setTitle(choices[2], for: .normal)
        
        progressBar.progress = quizbrain.getProgress()
        scoreLabel.text = "Score: \(quizbrain.getScore())"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
    }
    
    
}

