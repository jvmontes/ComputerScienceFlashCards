//
//  QuestionCell.swift
//  ComputerScienceFlashCards
//
//  Created by Jorge Viramontes on 2/27/17.
//  Copyright © 2017 Solstice. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!

    override func awakeFromNib() {
        print("Cell Working!")
        print("Label is \(questionLabel)")
    }
    
}
