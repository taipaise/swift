//
//  DetailViewController.swift
//  TableView
//
//  Created by 이동현 on 2023/03/12.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var langNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var langData : Lang?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUp()

    }
    
    func makeUp(){
        mainImage.image = langData?.langImg
        langNameLabel.text = langData?.langName
        descriptionLabel.text = langData?.langDescription
        print(descriptionLabel.text!)
    }


    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
