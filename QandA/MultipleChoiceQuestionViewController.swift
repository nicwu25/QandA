//
//  MultipleChoiceQuestionViewController.swift
//  QandA
//
//  Created by nicwu on 2018/8/9.
//  Copyright © 2018年 nicwu. All rights reserved.
//

import UIKit

class MultipleChoiceQuestionViewController: UIViewController {

    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var option: [UIButton]!
    @IBOutlet weak var bounsLabel: UILabel!
    @IBOutlet weak var Qcount: UILabel!
    
    
    var qnas = [Qna]()
    var count = 0
    var bouns = [0, 1000, 2000, 4000, 8000, 10000, 20000, 40000, 80000, 150000, 250000, 500000, 1000000]
    var rightAnswerCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        qnas = [Qna(question: "1973年的動作電影《囚禁》的主演是誰？", option1: "Aamir Khan", option2: "Amitabh Bachchan", option3: "Salman Khan", option4: "Akshay Kumar", answer: "Amitabh Bachchan"),
                Qna(question: "印度國徽中有三隻獅子，獅子下面寫的是什麼字？", option1: "The truth alone triumphs", option2: "Lies alone triumph", option3: "Fashion alone triumphs", option4: "Money alone triumphs", answer: "The truth alone triumphs"),
                Qna(question: "教義中描述的羅摩神右手裡握著的是什麼？", option1: "A flower", option2: "A sword", option3: "A child", option4: "A bow and arrow", answer: "A bow and arrow"),
                Qna(question: "歌曲《darshan do ghanshyam》 是由哪位著名印度詩人作詞的?", option1: "Surdas　蘇達斯", option2: "Tulsidas　妥切達斯", option3: "Mira Bai 米勒拜", option4: "Kabir　戈彼", answer: "Surdas　蘇達斯"),
                Qna(question: "在一百美元面值的鈔票上，是哪一位美國總統的肖像？", option1: "George Washington", option2: "Franklin Roosevelt", option3: "Benjamin Franklin", option4: "Abraham Lincoln", answer: "Benjamin Franklin"),
                Qna(question: "是誰發明的左輪手槍?", option1: "Samuel Colt", option2: "Bruce Browning", option3: "Dan Wesson", option4: "James Revolver", answer: "Samuel Colt"),
                Qna(question: "劍橋情報機關位於英國的哪個城市？", option1: "Oxford　牛津", option2: "Leeds　里茲", option3: "Cambridge 劍橋", option4: "London 倫敦", answer: "London 倫敦"),
                Qna(question: "哪一位板球運動員是本世紀歷史得分最多的?", option1: "Sachin Tendulkar", option2: "Ricky Ponting", option3: "Michael Slater", option4: "Jack Hobbs", answer: "Jack Hobbs"),
                Qna(question: "在亞曆克斯 大仲馬的書《三劍客》中,其中兩個劍客叫做阿托斯和波托斯,第三個劍客的名字叫什麼?", option1: "Aramis", option2: "Cardinal Richelieu", option3: "D'Artagnan", option4: "Planchet", answer: "Aramis"),
                Qna(question: "彼得潘又叫做情歌___?", option1: "小公主", option2: "小王子", option3: "小惡魔", option4: "小精靈", answer: "小王子"),
                Qna(question: "彼得潘的星座?", option1: "獅子座", option2: "巨蟹座", option3: "水瓶座", option4: "摩羯座", answer: "水瓶座"),
                Qna(question: "彼得潘的偶像是誰?", option1: "蔡依林", option2: "陳綺貞", option3: "張惠妹", option4: "戴佩妮", answer: "戴佩妮")]
        
        questionLabel.text = qnas[count].question
        option[0].setTitle(qnas[count].option1, for: .normal)
        option[1].setTitle(qnas[count].option2, for: .normal)
        option[2].setTitle(qnas[count].option3, for: .normal)
        option[3].setTitle(qnas[count].option4, for: .normal)
        Qcount.text = "\(count+1)"
        
    }

    @IBAction func optionChoice(_ sender: UIButton) {
        if sender.currentTitle == qnas[count].answer {
            rightAnswerCount += 1
            bounsLabel.text = "\(bouns[rightAnswerCount])"
        }
        else {
            let alertController = UIAlertController(title: "挑戰失敗", message: "獲得\(bouns[rightAnswerCount])元", preferredStyle: .alert)
            let playAgainAction = UIAlertAction(
                title: "再玩一次",
                style: .default,
                handler:{
                (action: UIAlertAction!) -> Void in
                    self.navigationController?.popViewController(animated: true)
            })
            alertController.addAction(playAgainAction)
            self.present(alertController, animated: true, completion: nil)
        }
        count += 1
        if count == 12{
            count = 0
            let alertController = UIAlertController(title: "恭喜挑戰成功", message: "贏得獎金1000000元", preferredStyle: .alert)
            let okAction = UIAlertAction(
                title: "確認",
                style: .default,
                handler:{
                (action: UIAlertAction!) -> Void in
                    self.navigationController?.popViewController(animated: true)
            })
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
        questionLabel.text = qnas[count].question
        option[0].setTitle(qnas[count].option1, for: .normal)
        option[1].setTitle(qnas[count].option2, for: .normal)
        option[2].setTitle(qnas[count].option3, for: .normal)
        option[3].setTitle(qnas[count].option4, for: .normal)
        Qcount.text = "\(count+1)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
