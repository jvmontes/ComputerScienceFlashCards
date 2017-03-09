//
//  AnswerViewController.swift
//  ComputerScienceFlashCards
//
//  Created by Jorge Viramontes on 3/8/17.
//  Copyright © 2017 Solstice. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var questionSet: QuestionSet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let answer = self.questionSet?.answer else {
            print("Something went wrong!")
            return
        }
        
        self.answerLabel.text = answer
    }
    
}

