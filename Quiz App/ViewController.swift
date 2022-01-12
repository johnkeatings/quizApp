//
//  ViewController.swift
//  Quiz App
//
//  Created by John Keatings on 2022-01-11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var quiz = [
        Question(text: "There are 7 planets in our solar system", answer: "True"),
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = quiz[questionNumber].text
        answerLabel.text = ""
    }


    @IBAction func actionKeyPressed(_ sender: UIButton) {
        
        if sender.titleLabel?.text! == quiz[questionNumber].answer {
            answerLabel.text = "Right"
        } else {
            answerLabel.text = "Wrong"
        }
        
        updateUI()
    }
    
    func updateUI() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        questionLabel.text = quiz[questionNumber].text
    }
}
