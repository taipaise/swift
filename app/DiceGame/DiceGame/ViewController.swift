//
//  ViewController.swift
//  DiceGame
//
//  Created by 이동현 on 2022/04/05.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!

    var diceArray : [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]

    @IBOutlet weak var rollButton: UIButton!

    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
    //첫번째와 두번째 이미지뷰의 이미지를 랜덤으로 변경
        let random1 : Int = Int.random(in: 0...5)
        let random2 : Int = Int.random(in: 0...5)
        var result : Int = random1 + random2
        firstImageView.image = diceArray[random1]
        secondImageView.image = diceArray[random2]
        resultLabel.text = "결과는 \(result+2)입니다."
    }
    
}

