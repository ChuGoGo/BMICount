//
//  ViewController.swift
//  BMICount
//
//  Created by Chu Go-Go on 2022/1/3.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heighttext: UITextField!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var persentTextfield: UITextField!
    @IBOutlet weak var allmoneyLabel: UILabel!
    @IBOutlet weak var PeopleNum: UITextField!
    @IBOutlet weak var tipNum: UILabel!
    @IBOutlet weak var giftTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var daysTextField: UITextField!
    @IBOutlet weak var howMuchYouNeed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
    }
    @IBAction func countBmi(_ sender: Any) {
//        把你輸入TextField的轉換成公斤
        let weight = weightText.text!
//        把你輸入TextField的轉換成體重
        let height = heighttext.text!
//        你的體重轉換成Double
        let wieghtnum = Double(weight)
//        你的身高轉換成Double
        let heightnum = Double(height)
//        如果身高跟體重不等於空值的話，就會跑入計算Bmi環節
        if wieghtnum != nil, heightnum != nil {
            let heightcount = heightnum! / 100
            let bmi = wieghtnum! / (heightcount * heightcount)
//            把你的計算結果跑在Label裡面 ％.2f是指小數點第二位
            bmiLabel.text = String(format: "%.2f", bmi)
        }
//        當你按下button的時候鍵盤會收起來
        view.endEditing(true)
    }
    @IBAction func countMoney(_ sender: Any) {
        let money = moneyTextField.text!
        let persent = persentTextfield.text!
        let people = PeopleNum.text!
        let moneynum = Double(money)
        let persentnum = Double(persent)
        let peopleCount = Double(people)
        if moneynum != nil, persentnum != nil {
            let tipCount = moneynum! * ( persentnum! / 100 )
            tipNum.text = String(format: "%.1f", tipCount)
        }
            if moneynum != nil, persentnum != nil, peopleCount != nil {
                let moneycount = (moneynum! + moneynum! * ( persentnum! / 100 )) / peopleCount!
            allmoneyLabel.text = String(format: "%.1f", moneycount)
        }
        view.endEditing(true)
    }
    @IBAction func countDay(_ sender: Any) {
        let gift = giftTextField.text!
        let price = priceTextField.text!
        let days = daysTextField.text!
        let pircenum = Double(price)
        let daysnum = Double(days)
        if pircenum != nil, daysnum != nil {
            let yourWish = pircenum! / daysnum!
            howMuchYouNeed.text = "如果你想要買\(gift)的話\n你需要每天存\(String(format: "%.0f", yourWish))圓在你的撲滿裡!"
        }
        view.endEditing(true)
    }
    
    }
    



