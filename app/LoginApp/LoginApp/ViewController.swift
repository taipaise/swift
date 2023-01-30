//
//  ViewController.swift
//  LoginApp
//
//  Created by 이동현 on 2023/01/30.
//

import UIKit

final class ViewController: UIViewController{
    
    private let textViewHeight :CGFloat = 48
    //emailTextFieldView라는 저장속성이 생기며 클로저가 실행된다.
    private lazy var emailTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.addSubview(emailTextField)
        view.addSubview(emailInfoLabel)
        return view
        //생성 후에 오토 레이아웃을 잡아줘야하기 때문에 오토레이아웃까지 한번에 설정할 수 는 없음
    }()
    
    private var emailInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "이메일 또는 전화번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.white
        return label
    }()
     
    private lazy var emailTextField: UITextField = {
        var tf = UITextField()
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        //자동으로 앞글자를 대문자로 바꿔주기 설정
        tf.autocapitalizationType = .none
        //자동으로 오타 수정 끄기
        tf.autocorrectionType = .no
        //스펠링 체크 끄기
        tf.spellCheckingType = .no
        //키보드 타입 설정
        tf.keyboardType = .emailAddress
        
        tf.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        return tf
    }()
    
    private lazy var passwordTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.addSubview(passwordTextField)
        view.addSubview(passwordInfoLabel)
        view.addSubview(passwordSecureButton)
        return view
    }()
    
    private var passwordInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.white
        return label
    }()
    
    private let passwordTextField: UITextField = {
        var tf = UITextField()
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        //자동으로 앞글자를 대문자로 바꿔주기 설정
        tf.autocapitalizationType = .none
        //자동으로 오타 수정 끄기
        tf.autocorrectionType = .no
        //스펠링 체크 끄기
        tf.spellCheckingType = .no
        //키보드 타입 설정
        tf.keyboardType = .emailAddress
        //입력시 안보이게 설정
        tf.isSecureTextEntry = true
        tf.clearsOnBeginEditing = false
        
        tf.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        return tf
    }()
    
    //비밀번호 표시 버튼 만들기
    private let passwordSecureButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("표시", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
        button.addTarget(self, action: #selector(passwordSecureModeSetting), for: .touchUpInside)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        //선의 넓이를 설정
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        //버튼이 동작할지 말지 설정. email과 비밀번호가 모두 입력될때 동작되게 함
        button.isEnabled = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [emailTextFieldView, passwordTextFieldView, loginButton])
        st.spacing = 18
        st.axis = .vertical
        st.distribution = .fillEqually
        st.alignment = .fill
        return st
    }()


    private let passwordResetButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("비밀번호 재설정", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        return button
    }()
    //MARK: asdad
    lazy var emailInfoLabelCenterYConstraint = emailInfoLabel.centerYAnchor.constraint(equalTo: emailTextFieldView.centerYAnchor)
    lazy var passwordInfoLabelCenterYConstraint = passwordInfoLabel.centerYAnchor.constraint(equalTo: passwordTextFieldView.centerYAnchor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func setup(){
        //emailTextFieldView 오토 레이아웃 잡기
        //equalTo : 기준을 어디로 맞출건지
        //constant : 간격을 얼마나 둘 것인지. 위와 왼쪽 기준으로는 양수, 아래와 오른쪽 기준으로는 음수
        view.backgroundColor = .black
        view.addSubview(stackView)
        view.addSubview(passwordResetButton)
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        emailInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        emailInfoLabel.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8).isActive = true
        emailInfoLabel.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8).isActive = true
        //y축 가운데로 맞추기
//        emailInfoLabel.centerYAnchor.constraint(equalTo: emailTextFieldView.centerYAnchor, constant: 0).isActive = true
        emailInfoLabelCenterYConstraint.isActive = true
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8).isActive = true
        emailTextField.topAnchor.constraint(equalTo: emailTextFieldView.topAnchor, constant: 15).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: emailTextFieldView.bottomAnchor, constant: 2).isActive = true
        
        passwordInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordInfoLabel.leadingAnchor.constraint(equalTo: passwordTextFieldView.leadingAnchor, constant: 8).isActive = true
        passwordInfoLabel.trailingAnchor.constraint(equalTo: passwordTextFieldView.trailingAnchor, constant: 8).isActive = true
//        passwordInfoLabel.centerYAnchor.constraint(equalTo: passwordTextFieldView.centerYAnchor, constant: 0).isActive = true
        passwordInfoLabelCenterYConstraint.isActive = true
        
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo: passwordTextFieldView.leadingAnchor, constant: 8).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: passwordTextFieldView.trailingAnchor, constant: 8).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: passwordTextFieldView.topAnchor, constant: 15).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: passwordTextFieldView.bottomAnchor, constant: 2).isActive = true
        
        passwordSecureButton.translatesAutoresizingMaskIntoConstraints = false
        passwordSecureButton.trailingAnchor.constraint(equalTo: passwordTextFieldView.trailingAnchor, constant: -8).isActive = true
        passwordSecureButton.topAnchor.constraint(equalTo: passwordTextFieldView.topAnchor, constant: 15).isActive = true
        passwordSecureButton.bottomAnchor.constraint(equalTo: passwordTextFieldView.bottomAnchor, constant: -8).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: textViewHeight * 3 + 36).isActive = true
        
        passwordResetButton.translatesAutoresizingMaskIntoConstraints = false
        passwordResetButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10).isActive = true
        passwordResetButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        passwordResetButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        passwordResetButton.heightAnchor.constraint(equalToConstant: textViewHeight).isActive = true
        
        
    }

    
    /*
     다음과 같이 더 깔끔하게 구현하는 방법도 있다.
     func setup(){
         //emailTextFieldView 오토 레이아웃 잡기
         //equalTo : 기준을 어디로 맞출건지
         //constant : 간격을 얼마나 둘 것인지. 위와 왼쪽 기준으로는 양수, 아래와 오른쪽 기준으로는 음수
         view.addSubview(emailTextFieldView)
         emailInfoLabel.translatesAutoresizingMaskIntoConstraints = false
         emailTextField.translatesAutoresizingMaskIntoConstraints = false
         //배열의 형태로 다음과 같이 작성하면 .isActive = true를 쓰지 않아도 됨
         NSLayoutConstraint.activate([
             emailInfoLabel.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8),
             emailInfoLabel.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8),
             emailInfoLabel.centerYAnchor.constraint(equalTo: emailTextFieldView.centerYAnchor, constant: 0),
             
             emailTextField.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8),
             emailTextField.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8),
             emailTextField.topAnchor.constraint(equalTo: emailTextFieldView.topAnchor, constant: 15),
             emailTextField.bottomAnchor.constraint(equalTo: emailTextFieldView.bottomAnchor, constant: 2)
         ])
     }
     
     */
    @objc func resetButtonTapped(){
        print("reset button tapped")
        let alert = UIAlertController(title: "비밀 번호 바꾸기", message: "비밀 번호를 바꾸시겠습니끼?", preferredStyle: .alert)
        let success = UIAlertAction(title: "확인", style: .default) { action in
            //확인을 누르면 작동하는 코드
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) { cancel in
            //취소를 누르면 작동하는 코드
        }
        //액션 두개를 alert에 등록
        alert.addAction(success)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    @objc func passwordSecureModeSetting(){
        print("표시버튼이 눌렸습니다.")
        passwordTextField.isSecureTextEntry.toggle()
    }
    
    @objc func loginButtonTapped(){
        print("로그인 버튼이 눌렸습니다.")
    }
    
}

extension ViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == emailTextField{
            emailTextFieldView.backgroundColor = .lightGray
            emailInfoLabel.font = UIFont.systemFont(ofSize: 11)
            //오토 레이아웃 수정하기
            emailInfoLabelCenterYConstraint.constant = -13
        }
        if textField == passwordTextField{
            passwordTextFieldView.backgroundColor = .lightGray
            passwordInfoLabel.font = UIFont.systemFont(ofSize: 11)
            //오토 레이아웃 수정하기
            passwordInfoLabelCenterYConstraint.constant = -13
        }
        
        UIView.animate(withDuration: 0.2) {
            self.stackView.layoutIfNeeded()
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == emailTextField{
            emailTextFieldView.backgroundColor = .darkGray
            if emailTextField.text == ""{
                emailInfoLabel.font = UIFont.systemFont(ofSize: 18)
                emailInfoLabelCenterYConstraint.constant = 0
            }
        }
        
        if textField == passwordTextField{
            passwordTextFieldView.backgroundColor = .darkGray
            if passwordTextField.text == ""{
                passwordInfoLabel.font = UIFont.systemFont(ofSize: 18)
                passwordInfoLabelCenterYConstraint.constant = 0
            }
        }
        UIView.animate(withDuration: 0.2) {
            self.stackView.layoutIfNeeded()
        }
    }
    
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
            let email = emailTextField.text, !email.isEmpty,
            //passwordTextField에 텍스트가 있고, password가 nil이 아닐 경우
            let password = passwordTextField.text, !password.isEmpty else{
            //조건 만족하지 못하는 경우
            loginButton.backgroundColor = .clear
            loginButton.isEnabled = false // 버튼 비활성화
            return
        }
        //조건 만족 시 버튼 활성화
        loginButton.backgroundColor = .red
        loginButton.isEnabled = true
    }
}

