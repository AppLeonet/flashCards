//
//  ViewController.swift
//  FlashCard
//
//  Created by Man deng Ho on 11/16/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var parrotLabelText: UILabel!
    @IBOutlet weak var parrotButton: UIButton!
    
    @IBOutlet weak var monkeyButton: UIButton!
    
    @IBOutlet weak var ratButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        QuestionLabel.layer.cornerRadius = 15
        QuestionLabel.clipsToBounds = true
        parrotLabelText.layer.cornerRadius = 15
        parrotLabelText.clipsToBounds = true
        card.layer.shadowRadius = 8
        card.layer.shadowOpacity = 0.3
        monkeyButton.layer.borderWidth = 5
        monkeyButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5645603538, blue: 0.1674515009, alpha: 1)
        monkeyButton.layer.cornerRadius = 20
        parrotButton.layer.borderWidth = 5
        parrotButton.layer.borderColor = #colorLiteral(red: 0.3268656135, green: 0.8425694108, blue: 0.3268861771, alpha: 1)
        parrotButton.layer.cornerRadius = 20
        ratButton.layer.borderWidth = 5
        ratButton.layer.borderColor = #colorLiteral(red: 0.7716639638, green: 0.7861241102, blue: 0.7780296206, alpha: 1)
        ratButton.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
        
    }
    
     
    @IBAction func didTap(_ sender: Any) {
        QuestionLabel.isHidden = true
        
       
    }
    
    func updateFlascard(Question: String, Answer: String, xtraAnswer1: String?, xtraAnswer2: String?) {
        QuestionLabel.text = Question
        parrotLabelText.text = Answer
        
        parrotButton.setTitle(Answer, for: .normal)
        monkeyButton.setTitle(xtraAnswer1, for: .normal)
        ratButton.setTitle(xtraAnswer2, for: .normal)
        
    }
    
    @IBAction func didTap02(_ sender: Any) {
        
        if(parrotLabelText.isHidden == false) {
           QuestionLabel.isHidden = false
        }
    }
    
    
    @IBAction func buttonParrot(_ sender: Any) {
        
        print("tapped")
            //if(parrotLabelText.isHidden == false) {
               QuestionLabel.isHidden = true
           // }
            
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
        if segue.identifier == "editSegue" {
            creationController.initialQuestion = QuestionLabel.text
            creationController.initialAnswer = parrotLabelText.text
        }
        
    }
    
        
    
    
    
    
    @IBAction func buttonRat(_ sender: Any) {
        print("tapped2")
        ratButton.isHidden = true
    }
    
        
    @IBAction func buttonMonkey(_ sender: Any) {
        print("tapped3")
        monkeyButton.isHidden = true
    }
    
        
    
    
    
        
    
    

}

