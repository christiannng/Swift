//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Christian Nguyen on 2019-12-02.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var questionNo = 0
    var score = 0
    
    let quiz = [
        QuizQuestion(Question: "Which is the largest organ in the human body?", Choices: ["Heart", "Skin", "Large Intestine"], Answer: "Skin"),
        QuizQuestion(Question: "Five dollars is worth how many nickels?", Choices: ["25", "50", "100"], Answer: "100"),
        QuizQuestion(Question: "What do the letters in the GMT time zone stand for?", Choices: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], Answer: "Greenwich Mean Time"),
        QuizQuestion(Question: "What is the French word for 'hat'?", Choices: ["Chapeau", "Écharpe", "Bonnet"], Answer: "Chapeau"),
        QuizQuestion(Question: "In past times, what would a gentleman keep in his fob pocket?", Choices: ["Notebook", "Handkerchief", "Watch"], Answer: "Watch"),
        QuizQuestion(Question: "How would one say goodbye in Spanish?", Choices: ["Au Revoir", "Adiós", "Salir"], Answer: "Adiós"),
        QuizQuestion(Question: "Which of these colours is NOT featured in the logo for Google?", Choices: ["Green", "Orange", "Blue"], Answer: "Orange"),
        QuizQuestion(Question: "What alcoholic drink is made from molasses?", Choices: ["Rum", "Whisky", "Gin"], Answer: "Rum"),
        QuizQuestion(Question: "What type of animal was Harambe?", Choices: ["Panda", "Gorilla", "Crocodile"], Answer: "Gorilla"),
        QuizQuestion(Question: "Where is Tasmania located?", Choices: ["Indonesia", "Australia", "Scotland"], Answer: "Australia")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNo].question
    }
    
    func getChoices() -> [String] {
        return quiz[questionNo].choices
    }
    
    func getProgress() -> Float {
         return Float(questionNo) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if(questionNo + 1 < quiz.count) {
            questionNo += 1
        } else {
            questionNo = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(UserAnswer: String) -> Bool {
        if(UserAnswer == quiz[questionNo].answer) {
            score += 1
            return true;
        }
        
        return false;
    }
    
}
