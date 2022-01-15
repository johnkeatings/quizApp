//
//  QuizBrain.swift
//  Quiz App
//
//  Created by John Keatings on 2022-01-13.
//

import Foundation

struct QuizBrain {
    
    var quiz = [
        Question(text: "There are 7 planets in our solar system", answer: "False"),
        Question(text: "Each planet in our solar system contains oxygen", answer: "False"),
        Question(text: "Carbon is the most frequent element on earth", answer: "False"),
        Question(text: "Sunlight requires nearly 25 seconds to reach Earth", answer: "False"),
        Question(text: "Jupiter is more massive than all the other planets in our solar system put together", answer: "True"),
        Question(text: "Blue stars are much cooler than red stars", answer: "False"),
        Question(text: "Approximately 90% of our galaxy might contain dark matter", answer: "True"),
        Question(text: "The Moon is larger in surface area than the United States", answer: "True"),
        Question(text: "Of the four inner planets (Mercury, Venus, Earth, and Mars), Mars has the coolest surface temperature", answer: "False"),
    ]
    
    var questionNumber = 0
    var timeRemaining = 15
    
    mutating func updateQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            // game over screen and score should appear here
            questionNumber = 0
        }
    }
    
    
}
