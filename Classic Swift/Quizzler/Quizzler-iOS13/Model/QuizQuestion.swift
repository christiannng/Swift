//
//  QuizQuestion.swift
//  Quizzler-iOS13
//
//  Created by Christian Nguyen on 2019-12-02.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizQuestion{
    var question: String
    var choices: [String]
    var answer: String
    
    init(Question: String, Choices: [String], Answer: String){
        question = Question
        choices = Choices
        answer = Answer
    }
}
