//
//  CreationViewController.swift
//  FlashCard
//
//  Created by Man deng Ho on 11/17/22.
//

import UIKit

class CreationViewController: UIViewController {

    
    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        
        flashcardsController.updateFlascard(Question: question, Answer: answer!)
        
        dismiss(animated: true)
    }
    
    
}
