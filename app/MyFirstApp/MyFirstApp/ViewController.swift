//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 이동현 on 2022/04/04.
//
//화면 하나당 화면을 관리하는 코드가 있음!
import UIKit

class ViewController: UIViewController {

    //IBOutlet IB란 interface builder.
    @IBOutlet weak var mainLabel: UILabel!
    
    //앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "START"
        mainLabel.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
    }
    //interface builder action
    @IBAction func buttonPressed(_ sender: UIButton) {
        if mainLabel.text == "반갑습니다"{
            mainLabel.text = "안녕하세요!"
            mainLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        }
        else{
            mainLabel.text = "반갑습니다"
        }
    }
    
    
}

