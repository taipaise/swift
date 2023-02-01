//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by 이동현 on 2023/01/31.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var bmi : Float?
    // MARK: - viewDidLoad 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        // Do any additional setup after loading the view.
    }
    func setUp(){
        view.backgroundColor = .lightGray
        guard let bmiresult = bmi else{
            print("error")
            return
        }
        bmiLabel.text = String(format: "%.2f", bmiresult)
        setLabel()
    
    }

    
    // MARK: - 뒤로 가기 버튼 누르기
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    // MARK: - 계산 결과에 따라 라벨 세팅함수
    func setLabel(){
        guard let bmiresult = bmi else{
            print("error")
            return
        }
        switch bmiresult{
            case 0..<18.5:
            bmiLabel.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            resultLabel.text = "저체중"
            case 18.5..<23:
            bmiLabel.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            resultLabel.text = "정상"
            case 23..<25:
            bmiLabel.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            resultLabel.text = "과체중"
            case 25...:
            bmiLabel.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            resultLabel.text = "비만"
            default:
            print("error")
        }
    }
    
    
}
