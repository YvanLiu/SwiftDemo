//
//  ViewController.swift
//  SwiftDemo21
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "初始化"
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white;
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        let rightBarButton = UIBarButtonItem(title: "自定义", style: .plain, target: self, action: #selector(nextButtonClick))
        navigationItem.rightBarButtonItem = rightBarButton
    }

    @objc func nextButtonClick() {
        let next = NextViewController()
        next.title = "自定义"
        navigationController?.pushViewController(next, animated: true)
    }
    
    
    //MARK: UITableViewDataSource
    // cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    // UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
        if cell==nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
        }
        
        cell?.textLabel?.text = "这个是标题~"
        cell?.detailTextLabel?.text = "这里是内容了油~"
        cell?.imageView?.image = UIImage(named:"bean")
        return cell!
    }
    
    //MARK: UITableViewDelegate
    // 设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
 
    
}



