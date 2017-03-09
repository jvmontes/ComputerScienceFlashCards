//
//  QuestionsViewController.swift
//  ComputerScienceFlashCards
//
//  Created by Jorge Viramontes on 2/27/17.
//  Copyright © 2017 Solstice. All rights reserved.
//

import UIKit

public struct QuestionSet {
    var question: String
    var answer: String
}

class QuestionsViewController: UITableViewController {
    
    private var selectedIndex: IndexPath?
    
    private let questionSetArray: [QuestionSet] = [
        QuestionSet(
            question:"What is Computer Science?",
            answer:"Computer science is a discipline that spans theory and practice. It requires thinking both in abstract terms and in concrete terms. The practical side of computing can be seen everywhere. Nowadays, practically everyone is a computer user, and many people are even computer programmers. Getting computers to do what you want them to do requires intensive hands-on experience. But computer science can be seen on a higher level, as a science of problem solving. Computer scientists must be adept at modeling and analyzing problems. They must also be able to design solutions and verify that they are correct. Problem solving requires precision, creativity, and careful reasoning."),
        QuestionSet(question: "What is Programming?",
                    answer: "Programming is giving your computer the instructions it needs so it knows how to behave. The user will give input, the computer follows instructions you wrote, and executes those instructions to produce a result. \n\nAn example of a simple computer program is to greet the user. \n1. The computer says \"Hello! Please type your name:\"\n2. The user enters their name \n3. The user pushes a submit button \n4. The computer displays a label that says \"Hey Jorge!\""),
        QuestionSet(question: "What is Pseudocode?",
                    answer: "Pseudocode (pronounced SOO-doh-kohd) is a detailed yet readable description of what a computer program or algorithm must do, expressed in a formally-styled natural language rather than in a programming language. Pseudocode is sometimes used as a detailed step in the process of developing a program. It allows designers or lead programmers to express the design in great detail and provides programmers a detailed template for the next step of writing code in a specific programming language.")
    ]

    //MARK: - Table View Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionCell
        
        cell.questionLabel.text = self.questionSetArray[indexPath.row].question
        
        return cell

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionSetArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let answerViewController = AnswerViewController()
        
        answerViewController.questionSet = self.questionSetArray[indexPath.row]
        
        self.navigationController?.pushViewController(answerViewController, animated: true)
    
    }
    
}
