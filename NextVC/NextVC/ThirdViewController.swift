//
//  ThirdViewController.swift
//  NextVC
//
//  Created by 이동현 on 2023/01/31.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var stringData: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = stringData
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
