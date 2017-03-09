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
        "What is Programming?",
        "What is Pseudocode?"
    ]
    
    private let answers: [String] = [
        "Computer science is a discipline that spans theory and practice. It requires thinking both in abstract terms and in concrete terms. The practical side of computing can be seen everywhere. Nowadays, practically everyone is a computer user, and many people are even computer programmers. Getting computers to do what you want them to do requires intensive hands-on experience. But computer science can be seen on a higher level, as a science of problem solving. Computer scientists must be adept at modeling and analyzing problems. They must also be able to design solutions and verify that they are correct. Problem solving requires precision, creativity, and careful reasoning.",
        "Programming is giving your computer the instructions it needs so it knows how to behave. The user will give input, the computer follows instructions you wrote, and executes those instructions to produce a result. \n\nAn example of a simple computer program is to greet the user. \n1. The computer says \"Hello! Please type your name:\"\n2. The user enters their name \n3. The user pushes a submit button \n4. The computer displays a label that says \"Hey Jorge!\"",
        "Pseudocode (pronounced SOO-doh-kohd) is a detailed yet readable description of what a computer program or algorithm must do, expressed in a formally-styled natural language rather than in a programming language. Pseudocode is sometimes used as a detailed step in the process of developing a program. It allows designers or lead programmers to express the design in great detail and provides programmers a detailed template for the next step of writing code in a specific programming language."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Table View Methods
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
    
    //MARK: - Segue Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! AnswerViewController
        
        guard let questionCell = sender as? QuestionCell else {
            return
        }
        
        viewController.answerLabel = answers
        
        //viewController.answerLabel.text = answer
        
//        viewController.answerLabel.text = self.answers
        
    }
    
}
