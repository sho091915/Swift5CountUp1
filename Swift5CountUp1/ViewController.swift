//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 佐藤翔馬 on 2019/12/17.
//  Copyright © 2019 Shoma Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //起動時、ラベルの文字を0と表示したい
        countUpLabel.text = String(count)
    }

    //プラス画像をタップすると、下記下記plusメソッドが呼ばれる

    @IBAction func plus(_ sender: Any) {
        //カウントアップさせたい
        count = count + 1
        //ラベルに文字を反映したい(数字)
        countUpLabel.text = String(count)
        //キャストint型をString型に変更
        
        //１０以上になったら、色を黄色に変更したい
        if(count >= 10){
            changeTextColor()
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        //カウントダウンさせたい
        count = count - 1
        //ラベルに文字を反映したい(数字
        countUpLabel.text = String(count)
        //0以下になったら、色を白色に変更したい
        if count < 0 {
            resetColor()
        }
        //if文に括弧いらないバージョン
        
    }
    
    //新しくメソッドが作成された
    func changeTextColor(){
        countUpLabel.textColor = .yellow
    }
    
    
    func resetColor(){
        countUpLabel.textColor = .white
    }
}

