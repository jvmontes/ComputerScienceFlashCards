//
//  AnswerViewController.swift
//  ComputerScienceFlashCards
//
//  Created by Jorge Viramontes on 3/2/17.
//  Copyright © 2017 Solstice. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let answerLabel = UILabel(frame: CGRect(origin: CGPoint(x: 100, y: 100), size: CGSize(width: 100, height: 32)))
        answerLabel.text = "This is a sample answer"
        self.view.addSubview(answerLabel)
    }

}
