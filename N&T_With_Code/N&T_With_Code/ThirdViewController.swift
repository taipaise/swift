//
//  ThirdViewController.swift
//  N&T_With_Code
//
//  Created by 이동현 on 2023/02/19.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        makeUI()
        // Do any additional setup after loading the view.
    }
    func makeUI(){
        view.backgroundColor = .lightGray
        
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
        
        title = "Post"
    }
}
