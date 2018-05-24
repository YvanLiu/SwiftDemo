//
//  SecondViewController.swift
//  SwiftDemo21
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource {

    let contents:Dictionary<String,[String]> =
        ["A":["安其拉"],
         "B":["步惊云","不知火舞","白起","扁鹊"],
         "C":["程咬金","成吉思汗","蔡文姬","曹操"],
         "D":["妲己","狄仁杰","典韦","貂蝉","达摩","大乔","东皇太一"],
         "G":["高渐离","关羽","宫本武藏","干将莫邪","鬼谷子"],
         "H":["韩信","后羿","花木兰","黄忠"],
         "J":["荆轲","姜子牙"],
         "L":["老夫子","刘邦","刘婵","鲁班七号","兰陵王","露娜","廉颇","李元芳","刘备","李白","吕布"],
         "M":["墨子","芈月"],
         "N":["牛魔","娜可露露","哪吒","女娲"],
         "P":["庞统",""],
         "S":["孙膑","孙尚香","孙悟空"],
         "W":["王昭君","武则天"],
         "X":["项羽","小乔"],
         "Y":["亚瑟","虞姬","嬴政"],
         "Z":["周瑜","庄周","甄姬","钟无艳","张飞","张良","钟馗","赵云","诸葛亮"]]
    var keys:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        keys = contents.keys.sorted()
        
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.dataSource = self
        view.addSubview(tableView)
        
        let rightBarButton = UIBarButtonItem(title: "选择和取消", style: .plain, target: self, action: #selector(nextButtonClick))
        navigationItem.rightBarButtonItem = rightBarButton

    }
    
    @objc func nextButtonClick() {
        let third = ThirdViewController()
        third.title = "选择和取消"
        navigationController?.pushViewController(third, animated: true)
    }


    //MARK: UITableViewDataSource
    //MARK: 章节的个数
    func numberOfSections(in tableView: UITableView) -> Int {
        return keys.count
    }
    //MARK: 某一章节cell个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let arr = contents[keys[section]]
        return (arr?.count)!
    }
    //MARK: 初始化cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "indexsCellId")
        if cell==nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "indexsCellId")
        }
        let arr = contents[keys[indexPath.section]]
        cell?.textLabel?.text = arr?[indexPath.row]
        return cell!
    }
    //MARK: 每一个章节的标题
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keys[section]
    }
    //MARK: 设置索引序列内容
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return keys
    }
}
