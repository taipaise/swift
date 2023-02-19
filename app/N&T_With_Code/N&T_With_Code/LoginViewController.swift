//
//  LoginViewController.swift
//  N&T_With_Code
//
//  Created by 이동현 on 2023/02/19.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    //MARK: 버튼 추가
        private let nextButton: UIButton = {
            let button = UIButton(type : .custom)
            button.backgroundColor = .blue
            button.setTitle("Login", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
            return button
        }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        
    }
    
    func makeUI(){
        view.addSubview(nextButton)
        view.backgroundColor = .orange
        NSLayoutConstraint.activate([
            nextButton.widthAnchor.constraint(equalToConstant: 120),
            nextButton.heightAnchor.constraint(equalToConstant: 45),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func nextButtonTapped(){
        
        dismiss(animated: true)
    }
}

