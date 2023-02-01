//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by 이동현 on 2023/01/31.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var heightTextfield: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var weightTextField: UITextField!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
        // Do any additional setup after loading the view.
    }
    func setUp(){
        view.backgroundColor = .lightGray
        heightTextfield.keyboardType = .decimalPad
        weightTextField.keyboardType = .decimalPad
        heightTextfield.clipsToBounds = true
        weightTextField.clipsToBounds = true
        heightTextfield.layer.cornerRadius = 5
        weightTextField.layer.cornerRadius = 5
        
        heightTextfield.placeholder = "cm단위로 입력하세요"
        weightTextField.placeholder = "kg단위로 입력하세요"
        calculateButton.isEnabled = false
        calculateButton.backgroundColor = .gray
        
        heightTextfield.delegate = self
        weightTextField.delegate = self
        heightTextfield.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        weightTextField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        
        calculateButton.clipsToBounds = true
        calculateButton.layer.cornerRadius = 5
    }
    
    // MARK: - calculateButtonTapped
    @IBAction func calculateButtonTapped(_ sender: Any) {
        print("버튼이 눌렸음")
        let resultVC = storyboard?.instantiateViewController(withIdentifier: "ResultVC") as! ResultViewController
        guard let height = heightTextfield.text else{
            return
        }
        guard let weight = weightTextField.text else{
            return
        }
        resultVC.modalPresentationStyle = .fullScreen
        resultVC.bmi = calculateBMI(height: Float(height)!, weight: Float(weight)!)
        present(resultVC, animated: true) {
            print("다음화면으로 이동")
            self.heightTextfield.text = ""
            self.weightTextField.text = ""
        }
        
    }
    
    // MARK: - bmi 계산 함수
    func calculateBMI(height:Float, weight: Float) ->Float{
        let meter = Float(height)/100
        let bmi = weight / (meter * meter)
        return bmi
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
                    //textField.resignFirstResponder() 로 대체 가능
        }
}
// MARK: - <##>텍스트 필드 델리게이트 확장
extension ViewController: UITextViewDelegate{
    
    @objc func textFieldEditingChanged(textField: UITextField){
        //textfield의 글자 수가 1개일때
        if textField.text?.count == 1{
            //만약 공백으로 시작하면
            if textField.text?.first == " "{
                textField.text = ""
                return
            }
        }
        guard
            //emailTextfiled에 텍스트가 있고고, email이 nil이 아닐 경우
            let height = heightTextfield.text, !height.isEmpty,
            //passwordTextField에 텍스트가 있고, password가 nil이 아닐 경우
            let weight = weightTextField.text, !weight.isEmpty else{
            //조건 만족하지 못하는 경우
            calculateButton.backgroundColor = .gray
            calculateButton.isEnabled = false // 버튼 비활성화
            return
        }
        //조건 만족 시 버튼 활성화
        calculateButton.backgroundColor = .blue
        calculateButton.isEnabled = true
    }
    
}
