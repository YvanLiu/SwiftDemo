//
//  ThirdViewController.swift
//  SwiftDemo21
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    // 数据源，
    var dataSource = [["微信支付":"select"],["支付宝支付":"on"],["银联支付":"no"]]
    

    override func viewDidLoad() {
        super.viewDidLoad()


        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)

        let rightBarButton = UIBarButtonItem(title: "插入和删除", style: .plain, target: self, action: #selector(nextButtonClick))
        navigationItem.rightBarButtonItem = rightBarButton

    }
    
    @objc func nextButtonClick() {
        let four = FourViewController()
        four.title = "插入和删除"
        navigationController?.pushViewController(four, animated: true)
    }

    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "selectCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "selectCell")
            cell?.selectionStyle = .none
        }
        let dic = dataSource[indexPath.row] as Dictionary
        cell?.textLabel?.text = dic.keys.first
        if dic.values.first == "select" {
            
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var i = 0
        for var dict in dataSource {
            
            if i == indexPath.row {
                dict[dict.keys.first!] = "select"
                dataSource[i] = dict
            } else {
                dict[dict.keys.first!] = "no"
                dataSource[i] = dict
            }
            i = i+1
        }
        tableView.reloadData()
    }
    
}
