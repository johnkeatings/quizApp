//
//  ViewController.swift
//  Quiz App
//
//  Created by John Keatings on 2022-01-11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var quiz = [
        ["There are 7 planets in our solar system", "True"],
        ["Each planet in our solar system contains oxygen", "False"],
        ["Carbon is the most frequent element on earth", "False"],
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[0][0]
    }


    @IBAction func actionKeyPressed(_ sender: UIButton) {
        updateUI()
        print(sender.titleLabel?.text!)
        print(quiz[questionNumber][1])
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }

    }
}
