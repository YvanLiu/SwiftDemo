//
//  FirstViewController.swift
//  SwiftDemo14
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "第一页"
        view.backgroundColor = UIColor.gray
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(nextPageClick))
        
        // 添加导航条上方的提示，这个属性被设置后，导航栏的高度将增加到74
        navigationItem.prompt = "正在使用您的位置..."
        // 设置导航栏不透明
        navigationController?.navigationBar.isTranslucent = false
        // 设置导航条样式
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        // 设置导航栏关键元素颜色，tintColor属性是View专门用来指定所包含的关键元素的颜色
        navigationController?.navigationBar.tintColor = UIColor.white
        // 设置导航栏背景图片
        navigationController?.navigationBar.setBackgroundImage(UIImage(named:""), for: .any, barMetrics: .default)
        
        // 设置导航栏 title 的 Font   // swift 4.0
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font:18]
        // 设置导航栏 title 的 Color
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.white]
        
        // 设置导航栏阴影部分图片，也就是导航栏下面那条细线
        navigationController?.navigationBar.shadowImage = UIImage(named:"")
        // 设置导航栏阴影颜色
        navigationController?.navigationBar.layer.shadowColor = UIColor.green.cgColor
        // 设置导航栏阴影偏移
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 10)
        // 设置导航栏阴影透明度
        navigationController?.navigationBar.layer.shadowOpacity = 0.2

    }
    
    @objc func nextPageClick() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }



}
