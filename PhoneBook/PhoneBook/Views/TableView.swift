//
//  TableView.swift
//  PhoneBook
//
//  Created by 이동현 on 2023/03/14.
//

import UIKit

class TableViewManager {
    private let tableView = UITableView()
    
    func setupTableViewConstraint(vc :ViewController){
        vc.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 60
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
    
    func getTableView() -> UITableView{
        return tableView
    }
}
