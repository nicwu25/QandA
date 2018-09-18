//
//  ViewController.swift
//  QandA
//
//  Created by nicwu on 2018/8/6.
//  Copyright © 2018年 nicwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var qnas = [Qna]()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        qnas = [Qna(question: "1973年的動作電影《囚禁》的主演是誰？", answer: "Amitabh Bachchan 阿米塔布·巴沙坎"),
                Qna(question: "印度國徽中有三隻獅子，獅子下面寫的是什麼字？", answer: "The truth alone triumphs　真理能戰勝一切 "),
                Qna(question: "教義中描述的羅摩神右手裡握著的是什麼？", answer: "一副弓箭"),
                Qna(question: "歌曲《darshan do ghanshyam》 是由哪位著名印度詩人作詞的?", answer: "Surdas 蘇達斯"),
                Qna(question: "在一百美元面值的鈔票上，是哪一位美國總統的肖像？", answer: "Benjamin Franklin　班傑明 弗蘭克林 "),
                Qna(question: "是誰發明的左輪手槍?", answer: "Samuel Colt 塞莫爾 考特"),
                Qna(question: "劍橋情報機關位於英國的哪個城市？", answer: "London 倫敦"),
                Qna(question: "哪一位板球運動員是本世紀歷史得分最多的?", answer: "Jack Hobbs 傑克 豪爾斯"),
                Qna(question: "在亞曆克斯 大仲馬的書《三劍客》中,其中兩個劍客叫做阿托斯和波托斯,第三個劍客的名字叫什麼?", answer: "Aramis 阿拉米斯")]
        questionLabel.text = qnas[count].question
        answerLabel.text = qnas[count].answer
        count += 1
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        questionLabel.text = qnas[count].question
        answerLabel.text = qnas[count].answer
        answerLabel.isHidden = true
        count += 1
        if count == 9{
            count = 0
        }
    }
    
    @IBAction func showAnswerButton(_ sender: Any) {
        answerLabel.isHidden = false
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

