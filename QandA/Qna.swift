//
//  Qna.swift
//  QandA
//
//  Created by nicwu on 2018/8/6.
//  Copyright © 2018年 nicwu. All rights reserved.
//

import Foundation

struct Qna {
    var question = ""
    var answer = ""
    var option1 = ""
    var option2 = ""
    var option3 = ""
    var option4 = ""
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }//問答題
    
    init(question: String, option1: String, option2: String, option3: String, option4: String, answer: String) {
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.answer = answer
    }//選擇題
}
