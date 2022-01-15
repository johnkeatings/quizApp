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
    @IBOutlet weak var timerLabel: UILabel!

    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        answerLabel.text = "Select answer to start quiz"
    }


    @IBAction func actionKeyPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text!
        
        if userAnswer == quizBrain.quiz[quizBrain.questionNumber].answer {
            answerLabel.text = "Correct"
        } else {
            answerLabel.text = "Incorrect"
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
            self.updateUI()
        }

    }
    
    func updateUI() {
        quizBrain.updateQuestion()
        answerLabel.text = ""
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        

    }

}
