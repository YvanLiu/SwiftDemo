//
//  RootViewController.swift
//  SwiftDemo12
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50)
        button.backgroundColor = UIColor.white
        button.setTitle("打开新的视图控制器", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    
    @objc func buttonClick() {
        navigationController?.pushViewController(ViewController(), animated: true)
        // 另一种跳转方式
        // present(ViewController(), animated: true, completion: nil)
    }

}
