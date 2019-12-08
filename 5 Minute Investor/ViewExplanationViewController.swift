//
//  ViewExplanationViewController.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 12/3/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit

class ViewExplanationViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var explanationLabel: UILabel!
    
    
    var question: String!
    var answer: String!
    var explanation: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "ppGradient")!)
        
        questionLabel.text = question
        answerLabel.text = answer
        explanationLabel.text = explanation
        explanationLabel.sizeToFit()
    }
    


}
