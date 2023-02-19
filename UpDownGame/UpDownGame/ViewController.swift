//
//  ViewController.swift
//  UpDownGame
//
//  Created by taipaise on 2022/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var comNumber : Int = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "버튼을 누르세요."
        numberLabel.text = ""
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if let num = sender.currentTitle{
            numberLabel.text = "\(num)"
        }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        guard let num = numberLabel.text else {return}
        guard let number = Int(num) else {return}
        if Int(number) > comNumber {
            mainLabel.text = "down"
        }
        else if Int(number) < comNumber {
            mainLabel.text = "up"
        }
        else{
            mainLabel.text = "bingo"
        }
    }
        @IBAction func resetButtonTapped(_ sender: UIButton) {
            comNumber = Int.random(in: 1...10)
            mainLabel.text = "선택하세요"
            numberLabel.text = ""
    }
    
}

