//
//  ViewController.swift
//  RPSGame
//
//  Created by taipaise on 2022/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImage: UIImageView!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var comChoice: UILabel!
    @IBOutlet weak var myChoice: UILabel!
    
    var myChoice1: Rps = Rps.rock
    var comChoice1: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        comChoice.text = "준비"
        myChoice.text = "준비"
        comImage.image = #imageLiteral(resourceName: "ready")
        myImage.image = UIImage(named: "ready.png")
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else {return}
        switch title{
        case "가위":
            myChoice1 = Rps.scissors
            myImage.image = #imageLiteral(resourceName: "scissors")
            myChoice.text = "가위를 낼까?"
        case "바위":
            myChoice1 = Rps.rock
            myImage.image = #imageLiteral(resourceName: "rock")
            myChoice.text = "바위를 낼까?"
        case "보":
            myChoice1 = Rps.paper
            myImage.image = #imageLiteral(resourceName: "paper")
            myChoice.text = "보를 낼까?"
        default:
            break
        }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        switch comChoice1{
        case Rps.rock:
            comImage.image = #imageLiteral(resourceName: "ready")
            comChoice.text = "바위"
        case Rps.paper:
            comImage.image = #imageLiteral(resourceName: "paper")
            comChoice.text = "보"
        case Rps.scissors:
            comImage.image = #imageLiteral(resourceName: "scissors")
            comChoice.text = "가위"
        }
      
        if comChoice1 == myChoice1 {
            mainLabel.text = "비겼다!"
        }
        else if (comChoice1 == .rock && myChoice1 == .paper) || (comChoice1 == .paper && myChoice1 == .scissors) || (comChoice1 == .scissors && myChoice1 == .rock){
            mainLabel.text = "이겼다!!"
        }
        else{
            mainLabel.text = "졌다!"
        }
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        comChoice.text = "준비"
        myChoice.text = "준비"
        comImage.image = #imageLiteral(resourceName: "ready")
        myImage.image = UIImage(named: "ready.png")
        mainLabel.text = "선택하세요"
        comChoice1 = Rps(rawValue: Int.random(in: 0...2))!
    }
    
}

