//
//  QuestionsViewController.swift
//  ComputerScienceFlashCards
//
//  Created by Jorge Viramontes on 2/27/17.
//  Copyright © 2017 Solstice. All rights reserved.
//

import UIKit

class QuestionsViewController: UITableViewController {
    
    private let questions: [String] = [
        "What is Computer Science?",
        "What is Pseudo-code?"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionCell
        cell.questionLabel.text = questions[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
