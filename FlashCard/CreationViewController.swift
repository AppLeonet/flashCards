//
//  CreationViewController.swift
//  FlashCard
//
//  Created by Man deng Ho on 11/17/22.
//

import UIKit

class CreationViewController: UIViewController {

    
    var flashcardsController: ViewController!
    var initialQuestion: String?
    var initialAnswer: String?
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var extraAnswerOneTextField: UITextField!
    
    @IBOutlet weak var extraAnswerTwoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func tapToCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func tapToDone(_ sender: Any) {
        let question = questionTextField.text!
        let answer = answerTextField.text
        let answerXtra1 = extraAnswerOneTextField.text
        let answerXtra2 = extraAnswerTwoTextField.text
        
        if question == nil || answer == nil || question.isEmpty || answer!.isEmpty {
            let alert = UIAlertController(title: "Missing text", message: "You need to add text to proceed successfully", preferredStyle: .alert)
            
            present(alert, animated: true)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
        } else {
            flashcardsController.updateFlascard(Question: question, Answer: answer!, xtraAnswer1: answerXtra1, xtraAnswer2: answerXtra2)
            
            dismiss(animated: true)
        }
        
        
    }
    
    
}
