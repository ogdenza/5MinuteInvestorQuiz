//
//  topic.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 12/3/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import Foundation


struct TopicData: Codable {
    var topic = ""
    var questions = ["","",""]
    var answerChoices = [["","","",""],["","","",""],["","","",""]]
    var answers = [0, 0, 0]
    var explanations = ["","",""]
    var completed = "Incomplete"
}
var topicArray: [TopicData] = []

