//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by daianne.gomes.aguiar on 30/04/20.
//  Copyright © 2020 daianne.gomes.aguiar. All rights reserved.
//

import Foundation

class Quiz {
    let question: String
    let options: [String]
    private let correctAnswer: String
    
    init(questions: String, options: [String], correctAnswer: String) {
        self.question = questions
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctAnswer
    }
    
    deinit {
//        print("liberou quiz da memória")
    }
}
