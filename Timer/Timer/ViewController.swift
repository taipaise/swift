//
//  ViewController.swift
//  Timer
//
//  Created by 이동현 on 2023/01/29.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timerSlider: UISlider!
    weak var timer: Timer?
    var number : Int = 0
    var timerFlag : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI(){
        timerLabel.text = "초를 선택하세요."
        timerSlider.setValue(0.5, animated: false)
        number = 30
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let seconds = Int(timerSlider.value * 60)
        print(seconds)
        timerLabel.text = "\(seconds)초"
        number = seconds
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        timerFlag = true
        timer?.invalidate()   //
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
            if number > 0{
                number -= 1
                timerSlider.setValue(Float(Float(number)/Float(60)), animated: true)
                timerLabel.text = "\(number)초"
            }
            else{
                number = 0
                timerLabel.text = "완료"
                stopTimer()
                while(timerFlag){
                    AudioServicesPlayAlertSound(SystemSoundID(1322))
                }
            }
            
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton){
        configureUI()
        stopTimer()
        timerFlag = false
    }

    func stopTimer() {
        timer?.invalidate()
    }
}

