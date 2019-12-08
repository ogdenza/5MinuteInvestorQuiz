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
    var explanationsArray: [String]!
    var questionOneCorrect: Bool!
    var questionTwoCorrect: Bool!
    var questionThreeCorrect: Bool!
    var isCorrectArray: [Int]!
    var indPath: Int!
    
    var topicData: TopicData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "kmGradient")!)
        
        if topicData.questions == ["","",""] {
            questionLabel.text = "Questions coming soon for this topic!"
            answerOneButton.isHidden = true
            answerTwoButton.isHidden = true
            answerThreeButton.isHidden = true
            answerFourButton.isHidden = true
            
        } else {
            makeButtonsRound()
            fitAnswerChoices()
            displayQuestionsAndAnswers()
        }
        
        print(indPath)
        
    }
    
    
    func displayQuestionsAndAnswers() {
        questionLabel.text = topicData.questions[questionIndex]
        answerOneButton.setTitle(topicData.answerChoices[questionIndex][0], for: .normal)
        answerTwoButton.setTitle(topicData.answerChoices[questionIndex][1], for: .normal)
        answerThreeButton.setTitle(topicData.answerChoices[questionIndex][2], for: .normal)
        answerFourButton.setTitle(topicData.answerChoices[questionIndex][3], for: .normal)
    }
    
    func fitAnswerChoices() {
        answerOneButton.titleLabel?.numberOfLines = 1
        answerOneButton.titleLabel?.adjustsFontSizeToFitWidth = true
        answerTwoButton.titleLabel?.numberOfLines = 1
        answerTwoButton.titleLabel?.adjustsFontSizeToFitWidth = true
        answerThreeButton.titleLabel?.numberOfLines = 1
        answerThreeButton.titleLabel?.adjustsFontSizeToFitWidth = true
        answerFourButton.titleLabel?.numberOfLines = 1
        answerFourButton.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    func makeButtonsRound() {
        self.answerOneButton.layer.cornerRadius = 20
        self.answerTwoButton.layer.cornerRadius = 20
        self.answerThreeButton.layer.cornerRadius = 20
        self.answerFourButton.layer.cornerRadius = 20
        self.explanationButton.layer.cornerRadius = 20
        self.nextQuestionButton.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowExplanation" {
            let destination = segue.destination as! ViewExplanationViewController
            destination.question = topicData.questions[questionIndex]
            destination.answer = topicData.answerChoices[questionIndex][topicData.answers[questionIndex] - 1]
            destination.explanation = topicData.explanations[questionIndex]
        }
        if segue.identifier == "ShowQuizComplete" {
            let destination = segue.destination as! QuizCompleteViewController
            destination.correctArray = [questionOneCorrect, questionTwoCorrect, questionThreeCorrect]
            destination.indPath = indPath
        }
    }
    
    func updateButtonColors(answerChosen: Int) {
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
        
        switch topicData.answers[questionIndex] {
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
        

            
    }
    
    func disableAnswerButtons() {
        answerOneButton.isEnabled = false
        answerTwoButton.isEnabled = false
        answerThreeButton.isEnabled = false
        answerFourButton.isEnabled = false
    }
    
    func unhideTopButtons() {
        checkAnswerLabel.isHidden = false
        explanationButton.isHidden = false
        nextQuestionButton.isHidden = false
    }
    
    func guessCorrectIncorrect(answerChosen: Int) {
        if answerChosen == topicData.answers[questionIndex] {
            checkAnswerLabel.text = "CORRECT!"
            checkAnswerLabel.textColor = UIColor.green
            isCorrect = true
            switch questionIndex {
            case 0:
                questionOneCorrect = true
            case 1:
                questionTwoCorrect = true
            case 2:
                questionThreeCorrect = true
            default:
                print("This should not be a question number")
            }
        } else {
            checkAnswerLabel.text = "INCORRECT"
            checkAnswerLabel.textColor = UIColor.red
            isCorrect = false
            switch questionIndex {
            case 0:
                questionOneCorrect = false
            case 1:
                questionTwoCorrect = false
            case 2:
                questionThreeCorrect = false
            default:
                print("This should not be a question number")
            }
        }
    }
    
    func resetUIForNewQuestion() {
        explanationButton.isHidden = true
        nextQuestionButton.isHidden = true
        questionIndex += 1
        questionLabel.text = topicData.questions[questionIndex]
        answerOneButton.isEnabled = true
        answerTwoButton.isEnabled = true
        answerThreeButton.isEnabled = true
        answerFourButton.isEnabled = true
        answerOneButton.backgroundColor = UIColor.white
        answerTwoButton.backgroundColor = UIColor.white
        answerThreeButton.backgroundColor = UIColor.white
        answerFourButton.backgroundColor = UIColor.white
        checkAnswerLabel.isHidden = true
        
        answerOneButton.setTitle(topicData.answerChoices[questionIndex][0], for: .normal)
        answerTwoButton.setTitle(topicData.answerChoices[questionIndex][1], for: .normal)
        answerThreeButton.setTitle(topicData.answerChoices[questionIndex][2], for: .normal)
        answerFourButton.setTitle(topicData.answerChoices[questionIndex][3], for: .normal)
    }
    
    @IBAction func checkAnswer(sender: AnyObject) {
        guard let button = sender as? UIButton else {
            return
        }
        
        if questionIndex == topicData.questions.count - 1 {
            nextQuestionButton.setTitle("View Results", for: .normal)
            topicData.completed = "Completed!"
        }
        
        let answerChosen = button.tag
        
        unhideTopButtons()
        guessCorrectIncorrect(answerChosen: answerChosen)
        updateButtonColors(answerChosen: answerChosen)
        disableAnswerButtons()
    }
    
    
    @IBAction func nextQuestionButtonPressed(_ sender: Any) {
        if questionIndex == topicData.questions.count - 1 {
            performSegue(withIdentifier: "ShowQuizComplete", sender: nil)
        } else {
            resetUIForNewQuestion()
        }
    }
    
    @IBAction func viewExplanationButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ShowExplanation", sender: nil)
    }
    
    
}

