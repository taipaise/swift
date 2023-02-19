//
//  FirstViewController.swift
//  N&T_With_Code
//
//  Created by 이동현 on 2023/02/19.
//

import UIKit

class FirstViewController: UIViewController {
    
    var isLogin = false
    
    private let nextButton: UIButton = {
        let button = UIButton(type : .custom)
        button.backgroundColor = .blue
        button.setTitle("next", for: .normal)
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
        view.backgroundColor = .white
        
        let appearance = UINavigationBarAppearance()
        //네비게이션바를 불투명하게 설정
        appearance.configureWithOpaqueBackground()
        //아래 코드는 네비게이션 바를 투명하게 설정함.
        //appearance.configureWithTransparentBackground()
        //네비게이션 바 색상 설정
        appearance.backgroundColor = .white
        
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.tintColor = .blue
        
        title = "Main"
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate([
            nextButton.widthAnchor.constraint(equalToConstant: 120),
            nextButton.heightAnchor.constraint(equalToConstant: 45),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        //로그인 되어 있지 않은 경우 로그인 화면 띄우기
        if !isLogin{
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true, completion: nil)
        }
    }
    
    @objc func nextButtonTapped(){
        let vc = First_nextViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
