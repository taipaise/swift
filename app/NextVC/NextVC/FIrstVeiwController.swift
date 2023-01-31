//
//  FIrstVeiwControllerViewController.swift
//  NextVC
//
//  Created by 이동현 on 2023/01/31.
//

//첫번째 버튼을 누르면 나오는 화면
import UIKit

class FIrstVeiwController: UIViewController {
    
    let mainLabel = UILabel()
    
    let backButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var stringData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        makeAutoLayout()
        // Do any additional setup after loading the view.
    }
    
    func setUp(){
        mainLabel.text = "FirstViewController"
        mainLabel.text = stringData
        mainLabel.font = UIFont.boldSystemFont(ofSize: 22)
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.backgroundColor = .gray
    }
    
    func makeAutoLayout(){
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
    }

    @objc func backButtonTapped(){
        dismiss(animated: true,completion: nil)
    }

}
