//
//  ViewController.swift
//  Quizzler-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var ansABtn: UIButton!
    @IBOutlet weak var ansBBtn: UIButton!
    @IBOutlet weak var ansCBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestion()
    }

    @IBAction func ansBtnPressed(_ sender: UIButton) {
        let userAns = sender.currentTitle
        
        if (quizBrain.checkAns(userAns!) == true) {
            sender.backgroundColor = UIColor.green
            
        } else {
            sender.backgroundColor = UIColor.red
        }

        quizBrain.nextQues()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() {
        questionLabel.text = quizBrain.getQuesText()
        progressBar.progress = quizBrain.getProgress()
        
        ansABtn.backgroundColor = UIColor.clear
        ansBBtn.backgroundColor = UIColor.clear
        ansCBtn.backgroundColor = UIColor.clear
        var ans = quizBrain.getAnsText()
        ansABtn.setTitle(ans[0], for: .normal)
        ansBBtn.setTitle(ans[1], for: .normal)
        ansCBtn.setTitle(ans[2], for: .normal)
        scoreLabel.text = "Score \(quizBrain.getScore())"
    }
    
}

