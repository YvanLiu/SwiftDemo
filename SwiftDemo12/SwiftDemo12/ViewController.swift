//
//  ViewController.swift
//  SwiftDemo12
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50)
        button.backgroundColor = UIColor.white
        button.setTitle("回到RootViewController", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    
    @objc func buttonClick() {
        navigationController?.popViewController(animated: true)
        // 另一种跳转方式 成对出现
        dismiss(animated: true, completion: nil)
    }
}

