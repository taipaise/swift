//
//  ViewController.swift
//  TableView
//
//  Created by 이동현 on 2023/02/19.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    var langDataManager = DataManager()
    var langArray : [Lang] = []
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 120
        langDataManager.makeLangData()
        langArray = langDataManager.getLangData()
        //tableView.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: <#T##String#>)
        //tableView.register(<#T##aClass: AnyClass?##AnyClass?#>, forHeaderFooterViewReuseIdentifier: <#T##String#>)
        // Do any additional setup after loading the view.
    }
}

extension ViewController : UITableViewDataSource{
    
    //테이블 뷰를 만들면 다음 함수가 몇개의 content를 만들면 되는지 알려줌
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return langArray.count
    }
    
    // 몇번째 행의 cell은 어떤 방식으로 표시 할건지
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //구체적인 셀의 형태를 구현
        //기존에 만들어 둔 셀을 쓰겠다는 메소드
        //indexPath : 몇번째 있는 셀을 꺼낼건지
        let cell = tableView.dequeueReusableCell(withIdentifier: "LangCell", for: indexPath) as! LangCell
        let lang = langArray[indexPath.row]
        cell.mainImageView.image = lang.langImg
        cell.langNameLabel.text = lang.langName
        cell.descriptionLabel.text = lang.langDescription
        
        return cell
    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let indexPath = sender as! IndexPath
            let detailVC = segue.destination as! DetailViewController
            let array = langDataManager.getLangData()
            print(array[indexPath.row].langDescription)
            detailVC.langData = array[indexPath.row]
        }
    }
}
