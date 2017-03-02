//
//  QuestionsViewController.swift
//  ComputerScienceFlashCards
//
//  Created by Jorge Viramontes on 2/27/17.
//  Copyright © 2017 Solstice. All rights reserved.
//

import UIKit

class QuestionsViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
