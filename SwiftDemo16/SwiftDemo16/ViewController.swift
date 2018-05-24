//
//  ViewController.swift
//  SwiftDemo16
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(button)
        
        // 设置背景图片
        button.setBackgroundImage(UIImage(named:""), for: .normal)
        // 设置背景颜色
        button.backgroundColor = UIColor.green
        
        // 设置标题（默认状态下）
        button.setTitle("this is a button", for: .normal)
        // 设置标题(高亮状态)
        button.setTitle("hightlight button", for: .highlighted)
        // 设置标题字体颜色（默认状态）
        button.setTitleColor(UIColor.white, for: .normal)
        // 设置标题字体颜色（高亮状态）
        button.setTitleColor(UIColor.red, for: .highlighted)
        // 设置标题文字大小和字体
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        // 设置图片(默认状态)
        //button.setImage(UIImage(named:""), for: .normal)
        // 设置图片（选中状态）
        //button.setImage(UIImage(named:""), for: .selected)
        // 设置图片在button中位置
        //button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
        // 设置文字在button中位置
        //button.titleEdgeInsets = UIEdgeInsets(top: 80, left: 5, bottom: 0, right: 5)
        // 按钮在高亮状态和禁用状态时，在这两个属性都被设置为true的情况下，如果没有设置这两种状态对应的图片，系统会把默认状态的图片变暗一些，用于区分高亮状态和普通状态
        // button.adjustsImageWhenDisabled = false
        // button.adjustsImageWhenHighlighted = false
        //  如果UIButton是custom属性的话，并不会从父类中继承tintColor，tintColor默认是蓝色，UIButton受到tintColor影响的只有title和image，但如果修改了textColor，那么tintColor就不起作用了
        button.tintColor = UIColor.yellow
        // 设置方法
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    
    @objc func buttonClick() {
        print("This is a button~")
    }


}

