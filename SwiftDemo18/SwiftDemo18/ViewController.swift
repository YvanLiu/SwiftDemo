//
//  ViewController.swift
//  SwiftDemo18
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建
        let uiSwitch = UISwitch(frame: CGRect(x: 100, y: 50, width: 100, height: 100))
        // 设置开启，有动画
        uiSwitch.setOn(true, animated: true)
        view.addSubview(uiSwitch)
        
        // 圆按钮的颜色
        uiSwitch.thumbTintColor = UIColor.red
        // 开启状态下及开启状态下边框颜色
        uiSwitch.onTintColor = UIColor.green
        // 关闭状态下及关闭状态下边框颜色
        uiSwitch.tintColor = UIColor.blue
        // ios7之后，这两个属性没有作用
        uiSwitch.onImage = UIImage(named: "tab1")
        uiSwitch.offImage = UIImage(named: "tab2")
        
        uiSwitch.addTarget(self, action: #selector(switchClick), for: .valueChanged)
        
    }
    
    @objc func switchClick(uiSwitch:UISwitch) {
        print(uiSwitch.isOn)
    }

}

