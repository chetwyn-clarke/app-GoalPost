//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Chetwyn on 3/27/18.
//  Copyright © 2018 Clarke Enterprises. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    
    // MARK: - Properties

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    // MARK: - View configuration
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goalTextView.delegate = self
        
        nextBtn.bindToKeyboard()
        
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeSelectedColor()
    }
    
    // MARK: - Functions
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    // MARK: - Actions
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeSelectedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeSelectedColor()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: finishGoalVC) as? FinishGoalVC else { return }
            
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    

}
