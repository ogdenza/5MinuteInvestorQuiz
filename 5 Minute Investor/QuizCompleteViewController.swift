//
//  QuizCompleteViewController.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 12/4/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit
import AVFoundation

class QuizCompleteViewController: UIViewController {

    @IBOutlet weak var questionOneIcon: UIImageView!
    @IBOutlet weak var questionTwoIcon: UIImageView!
    @IBOutlet weak var questionThreeIcon: UIImageView!
    @IBOutlet weak var resultsDescriptionLabel: UILabel!
    @IBOutlet weak var numberCorrectLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var resultsPicture: UIImageView!
    
    
    var correctArray: [Bool]!
    var totalCorrect = 0
    var audioPlayer = AVAudioPlayer()
//    var indPath: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "cbGradient")!)
        
        continueButton.layer.masksToBounds = true
        continueButton.layer.cornerRadius = 25
        
        
        
        displayCorrectIncorrect()
        updateLabelsAudioAndImage()
    }
    
    
    
    func displayCorrectIncorrect() {
        for index in 0...correctArray.count - 1 {
            if correctArray[index] == true {
                switch index{
                case 0:
                    questionOneIcon.image = UIImage(named: "checkmark")
                case 1:
                    questionTwoIcon.image = UIImage(named: "checkmark")
                case 2:
                    questionThreeIcon.image = UIImage(named: "checkmark")
                default:
                    print("This should not be a question")
                }
                totalCorrect += 1
            } else {
                switch index {
                case 0:
                    questionOneIcon.image = UIImage(named: "xbutton")
                case 1:
                    questionTwoIcon.image = UIImage(named: "xbutton")
                case 2:
                    questionThreeIcon.image = UIImage(named: "xbutton")
                default:
                    print("This should not be a question")
                }
            }
        }
    }
    
    func updateLabelsAudioAndImage() {
        if totalCorrect >= 2 {
            resultsDescriptionLabel.text = "Awesome Job!"
            resultsPicture.image = UIImage(named: "smUp")
            playSound(soundName: "applause", audioPlayer: &audioPlayer)
        } else {
            resultsDescriptionLabel.text = "Nice Try!"
            resultsPicture.image = UIImage(named: "smDown")
            playSound(soundName: "sadTrombone", audioPlayer: &audioPlayer)
        }
        numberCorrectLabel.text = "You got \(totalCorrect)/3 correct!"
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error - \(soundName) could not be played as an audio file")
            }
        } else {
                print("Error: could not load data from file")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowTableViewAgain" {
            let destination = segue.destination as! ViewController
//            destination.indPath = indPath
        }


    }
    
//    @IBAction func unwindFromQuizViewController(segue: UIStoryboardSegue) {
//        let source = segue.source as! QuizCompleteViewController
//
//        if let selectedIndexPath = tableView.indexPathForSelectedRow {
//            topicData[selectedIndexPath.row] = source.topicData.completed
//            tableView.reloadRows(at: [selectedIndexPath], with: .automatic)
//        }
//    }
    
    @IBAction func continueButtonPressed(_ sender: Any) {
        audioPlayer.stop()
        performSegue(withIdentifier: "ShowTableViewAgain", sender: nil)
    
    }
    
}
