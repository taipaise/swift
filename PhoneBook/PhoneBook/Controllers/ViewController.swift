//
//  ViewController.swift
//  PhoneBook
//
//  Created by 이동현 on 2023/03/14.
//

import UIKit

final class ViewController: UIViewController {

    private let tableViewManager = TableViewManager()
    var memberListManager = MemberListManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
        setupNavi()
        setupData()
    }
    
    // MARK: - UI 설정
    func setupTableView(){
        tableViewManager.setupTableViewConstraint(vc: self)
        tableViewManager.getTableView().dataSource = self
        tableViewManager.getTableView().delegate = self
        tableViewManager.getTableView().register(PhoneBookCell.self, forCellReuseIdentifier: "memberCell")
    }
    
    // MARK: - 네비게이션 바 설정
    func setupNavi(){
        title = "목록"
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() //네비게이션 바 불투명하게 설정
        appearance.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        //self.navigationItem.rightBarButtonItem = self.plusButton
    }
    
    func setupData(){
        memberListManager.makeMemberListData()
    }
}

// MARK: - 테이블 뷰 관련 코드
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberListManager.getMemberList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath) as! PhoneBookCell
        
        cell.imgView.image = memberListManager[indexPath.row].profileImg
        cell.nameLabel.text = memberListManager[indexPath.row].name
        cell.addressLabel.text = memberListManager[indexPath.row].address
        cell.selectionStyle = .gray
        
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    
}
