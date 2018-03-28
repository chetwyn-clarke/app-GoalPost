//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Chetwyn on 3/28/18.
//  Copyright © 2018 Clarke Enterprises. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    
    // MARK: - Properties

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    // MARK: - View Configuration
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointsTextField.delegate = self

        createGoalBtn.bindToKeyboard()
    }
    
    // MARK: - Functions
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    //MARK: - Actions
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        //Pass data to core data goal model
    }
    

}
