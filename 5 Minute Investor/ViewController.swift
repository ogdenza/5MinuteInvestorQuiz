//
//  ViewController.swift
//  5 Minute Investor
//
//  Created by Zach Ogden on 11/25/19.
//  Copyright © 2019 Zach Ogden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var topicsArray = ["Why Invest?", "Stock", "Stock Market", "Stock Price/Symbol", "Public v. Private Company", "How to Buy a Stock", "Portfilio"]
    var questionsArrays = [["This is the phenonmena that explains that you earn interest on interest and pricipal", "If you start with $1, how much will you have after 2 years with a 10% interest rate?"],["This is known as part ownership of a company"]]
    var answerChoicesArrays = [[["Capital Gain", "Capital Appreciation", "Compound Interest", "Dividends"],["$1","$1.10","$1.20","$1.21"]],[["Bond", "Stock", "Commodity", "Cyrpto"]]]
    var answersArrays = [[3,3], [2]]


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        print(questionsArrays.count)
        print(answerChoicesArrays)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowQuiz" {
            let destination = segue.destination as! QuizViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.topic = topicsArray[selectedIndexPath.row]
            destination.questionsArray = questionsArrays[selectedIndexPath.row]
            destination.answerChoicesArray = (answerChoicesArrays[selectedIndexPath.row] )
            destination.answersArray = answersArrays[selectedIndexPath.row]
        }
    }
    
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = topicsArray[indexPath.row]
        cell.detailTextLabel?.text = "Incomplete"
        return cell
    }
    
    
}
