//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Louis on 19/1/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let ans: [String]
    let correctAns: String
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.ans = a
        self.correctAns = correctAnswer
    }
}
