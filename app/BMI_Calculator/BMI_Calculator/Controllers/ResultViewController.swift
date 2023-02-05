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
    
    var bmi : BMI?
    
    // MARK: - viewDidLoad 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        // Do any additional setup after loading the view.
    }
    func setUp(){
        view.backgroundColor = .lightGray
        guard let bmi = bmi else{return}
        bmiLabel.text = String(bmi.val)
        bmiLabel.backgroundColor = bmi.color
        resultLabel.text = bmi.adString
    }

    // MARK: - 뒤로 가기 버튼 누르기
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
}
