//
//  ViewController.swift
//  SwiftDemo10
//
//  Created by 柳玉峰 on 2018/5/15.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = UIView()
        // 坐标
        testView.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        // 背景颜色
        testView.backgroundColor = UIColor.black
        // 透明度
        testView.alpha = 0.5
        // 是否隐藏视图
        testView.isHidden = false
        // 添加到当前视图控制器
        view.addSubview(testView)
        // 是否切除子视图超出部分
        testView.clipsToBounds = true
        // 子视图超出部门被切割
        let testView2 = UIView(frame: CGRect(x: 20, y: 20, width: 50, height: 50));
        testView2.backgroundColor = UIColor.red
        testView.addSubview(testView2);
        // MARK: 交互
        let touchView = UIView(frame: CGRect(x: 100, y: 240, width: 150, height: 150))
        touchView.backgroundColor = UIColor.black
        // 打开交互属性
        touchView.isUserInteractionEnabled = true
        // 点击手势
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapClick))
        touchView.addGestureRecognizer(tap)
        view.addSubview(touchView)
        
        // MARK: 变形操作
        let view_t = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view_t.backgroundColor = UIColor.black
        view_t.center = view.center
        view.addSubview(view_t)
        
        let transform = view_t.transform
        // 向下平移200像素
        view_t.transform = transform.translatedBy(x: 0, y: 200)
        // 缩小一半
        view_t.transform = transform.scaledBy(x: 0.5, y: 0.5)
        // 旋转仿射变换
        view_t.transform = transform.rotated(by: CGFloat(Double.pi/4))

    }
    
    @objc func tapClick() {
        print("touch me")
    }
}

