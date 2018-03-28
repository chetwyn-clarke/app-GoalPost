//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Chetwyn on 3/26/18.
//  Copyright © 2018 Clarke Enterprises. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Configuration
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("Button was pressed.")
    }
    
}

