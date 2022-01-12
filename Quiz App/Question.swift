//
//  Question.swift
//  Quiz App
//
//  Created by John Keatings on 2022-01-11.
//

import Foundation

struct Question {
    
    var text: String
    var answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
    
}
