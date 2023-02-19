//
//  SecondViewController.swift
//  N&T_With_Code
//
//  Created by 이동현 on 2023/02/19.
//

import UIKit

class SecondViewController: UIViewController {

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
        view.backgroundColor = .black
        makeUI()
        // Do any additional setup after loading the view.
    }
    func makeUI(){
        view.backgroundColor = .yellow
        
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
        
        title = "Search"
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate([
            nextButton.widthAnchor.constraint(equalToConstant: 120),
            nextButton.heightAnchor.constraint(equalToConstant: 45),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func nextButtonTapped(){
        let vc = Second_nextViewController()
        //네비게이션 컨트롤러가 UIViewController에 이미 옵셔널 타입으로 선언되어 있음!
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
