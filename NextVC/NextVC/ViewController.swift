//
//  ViewController.swift
//  NextVC
//
//  Created by 이동현 on 2023/01/31.
//

import UIKit

class ViewController: UIViewController {

    
    var num : Int = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func codeNextTapped(_ sender: UIButton) {
        let firstVC = FIrstVeiwController()
        firstVC.stringData = "코드로 짜인 첫번째 화면으로 이동함"
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
    }
    
    
    @IBAction func storyBoardCodeTapped(_ sender: UIButton) {
//        let secondVC = storyboard?.instantiateViewController(withIdentifier: "nextVC") as! SecondViewController
        
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else{
            print("실패시 코드")
            return
        }
        nextVC.stringData = "스토리 보드로 만든 두번째 화면으로 이동함"
        present(nextVC, animated: true, completion: nil)
    }
    
    
    @IBAction func storyBoardWithSegueTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //먼저 세그의 identifier 확인
        if segue.identifier == "toThirdVC"{
            let thirdVC = segue.destination as! ThirdViewController
            thirdVC.stringData = "세번째 화면으로 이동"
            print("asdasdas")
        }
        
        if segue.identifier == "toFourth"{
            let nextVC = segue.destination as! FourthViewController
            nextVC.stringData = "마지막 화면으로 이동"
            print("asdasdas")
        }
    }
    
    
    @IBAction func lastButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toFourth", sender: self)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if num > 5{
            return true
        }
        else{
            return false
        }
    }
}


