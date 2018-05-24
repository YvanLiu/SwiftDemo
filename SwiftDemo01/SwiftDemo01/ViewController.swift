//
//  ViewController.swift
//  SwiftDemo01
//
//  Created by 柳玉峰 on 2018/5/11.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: swift中可以不指定类型，但至少赋值一次
        // TODO: swift中可以不适用 ';'
        
        // MARK: 常量 let
        let name   = "yvan"
        let age    = 30
        let height = 170.6
        
        // 如果初始化时没有赋值，可在变量后面添加类型，用':'隔开
        let sex:String
        sex = "man"
        
        // 常量不会转换到其他类型，如果需要转换一个值到另外不同的类型，要先构造一个所需类型的实例
        // 可以使用'+'语法
        print("My name is "+name+", today "+String(age)+" years old.")
        
        // 或者使用'\()'语法
        print("I`m a \(height) height \(sex).")
        
        // MARK: 变量 var
        // 和常量语法类似 用var修饰的属性赋值后可以修改
        var object = "nothing"
        object = "nothing going on"
        print(object)
        
        // 使用 var定义色数组或字典 相当于OC 中的 'NSMutableArray'和'NSMutableDictionary'
        // TODO: Swfit 中使用 [] 来创建字典或数组
        var names = ["Li Lei","Han Meimei","Lusy"]
        names[0] = "Li Bai"
        names.insert("Tom", at: 0)
        print(names)
        
        var people = ["name":"Li Lei","age":10,"sex":"men"] as [String : Any]
        people["age"] = 13
        print(people)
        
        // 如果是使用let声明，就不可以对内容进行操作了，
        // 创建空的 字典或数组
        //var texts = [String]()
        //var dates = Dictionary<String,String>()
        // TODO: Swift 支持类型推到，所以不需要指定类型，赋值即可，如果一定要指定类型，如下：
        let value:Double = 20.0
        print(value)
    }
}

