//
//  ViewController.swift
//  TextFieldEx
//
//  Created by 이동현 on 2023/01/29.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        setup()
//        textField.becomeFirstResponder()
    }

    func setup(){
        view.backgroundColor = UIColor.gray
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "email"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .next
        
    }
    //텍스트 필드 입력을 허가할지 결정
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    //텍스트 필드 입력이 시작될때 호출
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("typing start")
    }
    //텍스트 필드 클리어를 허가할지
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    //텍스트 필드에 글자가 입력되거나 지워질때 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        
        //텍스트 필드에 글자 수 제한
        let maxLength = 10
        let currentString: NSString = (textField.text ?? "") as NSString
        let newString: NSString = currentString.replacingCharacters (in: range, with: string) as NSString
        return newString.length < maxLength
    }
        
        //        if Int(string) != nil { // 숫자로 변환이 되면 nil이 아닐 것임
        //            return false
        //        }
        //        else{
        //            //10글자 이상이면 입력을 막음
        //            guard let text = textField.text else { return true }
        //            let newLength = text.count + string.count - range.length
        //            return newLength <= 10
        //            }
        //        }
        //텍스트 필드의 return 을 허락할지 결정
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField.text == ""{
                textField.placeholder = "type something!"
                return false
            }
            else{
                return true
            }
        }
        //텍스트필드의 입력이 끝날때 끝낼지 말지 결정
        func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
            return true
        }
        //텍스트 필드의 입력이 완전히 끝날때 호출
        func textFieldDidEndEditing(_ textField: UITextField) {
            print("입력이 끝났습니다.")
        }
    //키보드 밖의 영역을 누르면 키보드가 내려가게 하기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        textField.resignFirstResponder()
    }
    
}

