//
//  FourViewController.swift
//  SwiftDemo21
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class FourViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {


    var dataSource = [["微信","支付宝","银联"],["微信","支付宝","银联"]]
    var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightBar = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(addButtonClick))
        navigationItem.rightBarButtonItem = rightBar
        
        
        let rightBarButton = UIBarButtonItem(title: "移动", style: .plain, target: self, action: #selector(nextButtonClick))
        navigationItem.rightBarButtonItems = [rightBarButton,rightBar]
        
        
        tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
    }
    
    @objc func nextButtonClick() {
        let five = FiveViewController()
        five.title = "移动"
        navigationController?.pushViewController(five, animated: true)
    }

    
    //MARK: 导航栏右侧按钮，点击开启或关闭编辑模式
    @objc func addButtonClick() {
        tableView.setEditing(!tableView.isEditing, animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "addCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "addCell")
            cell?.selectionStyle = .none
        }
        let arr = dataSource[indexPath.section] as Array
        cell?.textLabel?.text = arr[indexPath.row] as String
        return cell!
    }
    
    //MARK: 编辑模式，增加还是删除
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        if indexPath.section == 1 {
            return .delete
        }
        return .insert
    }
    //MARK: 执行编辑操作时，调用此方法
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        var arr = dataSource[indexPath.section] as Array
        if editingStyle == .insert {
            arr.insert("Apple Pay", at: indexPath.row)
            dataSource[indexPath.section] = arr
            tableView.insertRows(at: [indexPath], with: .right)
        } else {
            arr.remove(at: indexPath.row)
            dataSource[indexPath.section] = arr
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    

}
