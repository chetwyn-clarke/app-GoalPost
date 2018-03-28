//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Chetwyn on 3/28/18.
//  Copyright © 2018 Clarke Enterprises. All rights reserved.
//

import UIKit
import CoreData

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
    
    //MARK: - Functions
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("Successfully saved data.")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    
    //MARK: - Actions
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
        if pointsTextField.text != "" {
            
            self.save { (successfulSave) in
                if successfulSave {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    

}
