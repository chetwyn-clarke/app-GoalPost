//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Chetwyn on 3/27/18.
//  Copyright © 2018 Clarke Enterprises. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    // MARK: - Properties

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    // MARK: - View configuration
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
