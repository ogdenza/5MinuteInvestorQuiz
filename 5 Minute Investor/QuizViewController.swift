//
//  QuizViewController.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 11/25/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var checkAnswerLabel: UILabel!
    @IBOutlet weak var explanationButton: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    
    var topic: String!
    var questionsArray: [String]!
    var answerChoicesArray: [[String]]!
    var answersArray: [Int]!
    var questionIndex = 0
    var isCorrect: Bool!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkAnswerLabel.isHidden = true
        explanationButton.isHidden = true
        nextQuestionButton.isHidden = true
        
        self.answerOneButton.layer.cornerRadius = 20
        self.answerTwoButton.layer.cornerRadius = 20
        self.answerThreeButton.layer.cornerRadius = 20
        self.answerFourButton.layer.cornerRadius = 20
        self.explanationButton.layer.cornerRadius = 20
        self.nextQuestionButton.layer.cornerRadius = 20
        
        questionLabel.text = questionsArray[questionIndex]
        answerOneButton.setTitle(answerChoicesArray![questionIndex][0], for: .normal)
        answerTwoButton.setTitle(answerChoicesArray[questionIndex][1], for: .normal)
        answerThreeButton.setTitle(answerChoicesArray[questionIndex][2], for: .normal)
        answerFourButton.setTitle(answerChoicesArray[questionIndex][3], for: .normal)

        print(topic!)
        print(questionsArray.count)
        print(answerChoicesArray!)
        print(answersArray!)

    }
    
    
    @IBAction func checkAnswer(sender: AnyObject) {
        guard let button = sender as? UIButton else {
            return
        }
        
        checkAnswerLabel.isHidden = false
        explanationButton.isHidden = false
        nextQuestionButton.isHidden = false
        
        let answerChosen = button.tag
        
        if answerChosen == answersArray[questionIndex] {
            checkAnswerLabel.text = "CORRECT!"
            checkAnswerLabel.textColor = UIColor.green
            isCorrect = true
        } else {
            checkAnswerLabel.text = "INCORRECT"
            checkAnswerLabel.textColor = UIColor.red
            isCorrect = false
        }
        
        switch answersArray[questionIndex] {
        case 1:
            answerOneButton.backgroundColor = UIColor.green
        case 2:
            answerTwoButton.backgroundColor = UIColor.green
        case 3:
            answerThreeButton.backgroundColor = UIColor.green
        case 4:
            answerFourButton.backgroundColor = UIColor.green
        default:
            print("Error: this should not be an answer")
        }
    
        
        if isCorrect == false {
            switch answerChosen {
            case 1:
                answerOneButton.backgroundColor = UIColor.red
            case 2:
                answerTwoButton.backgroundColor = UIColor.red
            case 3:
                answerThreeButton.backgroundColor = UIColor.red
            case 4:
                answerFourButton.backgroundColor = UIColor.red
            default:
                print("Error: this should not be an answer")
            }
        }
        
        answerOneButton.isEnabled = false
        answerTwoButton.isEnabled = false
        answerThreeButton.isEnabled = false
        answerFourButton.isEnabled = false
    }
    
    @IBAction func nextQuestionButtonPressed(_ sender: Any) {
        explanationButton.isHidden = true
        nextQuestionButton.isHidden = true
        questionIndex += 1
        questionLabel.text = questionsArray[questionIndex]
        answerOneButton.isEnabled = true
        answerTwoButton.isEnabled = true
        answerThreeButton.isEnabled = true
        answerFourButton.isEnabled = true
        answerOneButton.backgroundColor = UIColor.white
        answerTwoButton.backgroundColor = UIColor.white
        answerThreeButton.backgroundColor = UIColor.white
        answerFourButton.backgroundColor = UIColor.white
        checkAnswerLabel.isHidden = true
        answerOneButton.setTitle(answerChoicesArray![questionIndex][0], for: .normal)
        answerTwoButton.setTitle(answerChoicesArray[questionIndex][1], for: .normal)
        answerThreeButton.setTitle(answerChoicesArray[questionIndex][2], for: .normal)
        answerFourButton.setTitle(answerChoicesArray[questionIndex][3], for: .normal)
        
        if questionIndex == questionsArray.count - 1 {
            nextQuestionButton.isEnabled = false
        }
    }
    
    
    
    
}
