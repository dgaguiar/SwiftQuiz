//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by daianne.gomes.aguiar on 30/04/20.
//  Copyright © 2020 daianne.gomes.aguiar. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view.
    }
    
    private func setup() {
        lbAnswered.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        
        if totalAnswers == 0 {
            lbWrong.isHidden = true
            lbScore.font = UIFont(name: "Arial", size: 24)
            lbScore.text = "Poxa você nem tentou 😢"
        } else {
            lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
            let score = totalCorrectAnswers*100/totalAnswers
            lbScore.text = "\(score)%"
        }
    }
    
}
