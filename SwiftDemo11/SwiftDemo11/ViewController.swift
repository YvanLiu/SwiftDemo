//
//  ViewController.swift
//  SwiftDemo11
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        testView.center = view.center
        testView.backgroundColor = UIColor.green
        view.addSubview(testView)
        
        // MARK: 设置边框
        testView.layer.borderColor = UIColor.red.cgColor
        testView.layer.borderWidth = 1
        
        // MARK: 设置阴影
        testView.layer.shadowColor = UIColor.red.cgColor
        // 阴影偏移度，代码中是(10,10)，即向下向右偏移10，默认值是(0, -3.0)
        testView.layer.shadowOffset = CGSize(width: 10, height: 10)
        // 设置阴影的透明度，默认值是0.0，取值范围0~1。
        testView.layer.shadowOpacity = 0.45
        // 设置阴影的模糊半径，用来实现阴影的模糊效果，默认值是3.0。
        testView.layer.shadowRadius = 5.0
        
        // MARK: 设置圆角
        // 会沿着圆角边缘对视图中的内容进行裁切 设置为true 阴影将会被切割掉
        testView.layer.masksToBounds = false
        testView.layer.cornerRadius = 100
        
        let v = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        v.backgroundColor = UIColor.black
        view.addSubview(v)
        
        // MARK: 渐变色
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = v.bounds
        
        let fromColor = UIColor.green.cgColor
        let minColor = UIColor.red.cgColor
        let toColor = UIColor.blue.cgColor
        
        gradientLayer.colors = [fromColor,minColor,toColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.locations = [0,0.3,1]
        v.layer.addSublayer(gradientLayer)
        
    }


}

