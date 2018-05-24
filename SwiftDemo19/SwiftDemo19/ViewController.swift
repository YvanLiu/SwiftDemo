//
//  ViewController.swift
//  SwiftDemo19
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建UITextField
        let textField = UITextField(frame: CGRect(x: 20, y: 220, width: 280, height: 40))
        // 背景颜色
        textField.backgroundColor = UIColor.white
        // 字体颜色
        textField.textColor = UIColor.black
        // 主题颜色
        textField.tintColor = UIColor.red
        
        // 边框样式
        textField.borderStyle = UITextBorderStyle.roundedRect
        // 提示语
        textField.placeholder = "请输入您的邮箱地址"
        // 自动更正功能
        textField.autocorrectionType = UITextAutocorrectionType.no
        // 完成按钮样式
        textField.returnKeyType = UIReturnKeyType.done
        // 清除按钮显示状态
        textField.clearButtonMode = UITextFieldViewMode.whileEditing
        // 键盘样式
        textField.keyboardType = UIKeyboardType.emailAddress
        // 键盘外观
        textField.keyboardAppearance = UIKeyboardAppearance.alert
        // 安全文本输入，（输入密码）
        textField.isSecureTextEntry = false
        
        view.addSubview(textField)
        // 左侧 view
        textField.leftViewMode = .always
        // 右侧 view
        textField.rightViewMode = .always
        
        let leftButton = UIButton(type: .infoDark)
        leftButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        textField.leftView = leftButton
        
        let rightButton = UIButton(type: .contactAdd)
        rightButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        textField.rightView = rightButton
        // 代理
        textField.delegate = self

    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("将要开始编辑")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("已经开始编辑")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("将要结束编辑")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("已经结束编辑")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("文本输入内容将要发生变化（每次输入都会调用）")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("将要清除输入内容，返回值是是否要清除掉内容")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("将要按下Return按钮，返回值是是否结束输入（是否失去焦点）")
        return true
    }


}

