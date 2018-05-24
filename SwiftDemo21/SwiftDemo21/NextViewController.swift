//
//  NextViewController.swift
//  SwiftDemo21
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class NextViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var dataSource = [[String:String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white;
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        dataSource = [
            ["name":"王小明","sex":"男","icon":"holderUserIcon","birthday":"2017-10-11"],
            ["name":"李磊","sex":"男","icon":"holderUserIcon","birthday":"2011-12-30"],
            ["name":"韩梅","sex":"女","icon":"holderUserIcon","birthday":"2014-9-10"],
            ["name":"JIM","sex":"男","icon":"holderUserIcon","birthday":"2008-10-1"]]
        tableView.reloadData()
        
        
        let rightBarButton = UIBarButtonItem(title: "索引", style: .plain, target: self, action: #selector(nextButtonClick))
        navigationItem.rightBarButtonItem = rightBarButton

    }

    @objc func nextButtonClick() {
        let second = SecondViewController()
        second.title = "索引"
        navigationController?.pushViewController(second, animated: true)
    }
    
    //MARK: UITableViewDataSource
    // cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    // UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell:NextCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? NextCell
        if cell==nil {
            cell = NextCell(style: .subtitle, reuseIdentifier: cellid)
        }
        let dict:Dictionary = dataSource[indexPath.row]
        cell?.iconImv.image = UIImage(named: dict["icon"]!)
        cell?.userLabel.text = dict["name"]
        cell?.sexLabel.text = dict["sex"]
        cell?.birthdayLabel.text = dict["birthday"]
        return cell!
    }
    
    //MARK: UITableViewDelegate
    // 设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
