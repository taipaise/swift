//
//  FourthViewController.swift
//  NextVC
//
//  Created by 이동현 on 2023/01/31.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var stringData : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = stringData
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
