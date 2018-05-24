//
//  ViewController.swift
//  SwiftDemo03
//
//  Created by 柳玉峰 on 2018/5/11.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         * Swift将OC中的大部分类都变成了结构体，比如Sring，比如Array，比如Dictionary。
         * Swift中不再存在OC中的NSMutableArray、NSMutableString,NSMutableDictionary
         * 在Swift中，只通过参数名前面是let还是var，let就是不可变，var就是可变。
         */

        // MARK: String
        // Swfit中，String是一个有序的字符集合，字符串可以通过String类型表示，也可以表示为Character类型的集合。
        let chars:[Character] = ["h","e","l","l","o"]
        let hello = String(chars)
        print(hello)
        // Swift中，拼接和操作字符串的方式与C中相似，轻量且易读，可以简单的使用'+'连接
        let helloWorld = "hello" + " world"
        print(helloWorld)
        
        // TODO: 定义
        let name = "Yvan"
        let sex:String = "man"
        print(name,sex)
        
        // TODO: 拼接
        var hei = "hello"
        hei.append(",world")
        print(hei)
        // 字符个数
        // hei.characters.count 这个被删了
        print(hei.count)
        
        // TODO: 截取
        // 截取第一个字符
        print(hello.startIndex)
        // 截取某一个字符
        print(hello[hello.index(hello.endIndex, offsetBy: -1)])
        // 截取一段字符
        print(hei[hei.index(hei.startIndex, offsetBy: 3)...hei.index(hei.endIndex, offsetBy: -1)])
        
        // TODO: 插入
        hei.insert(contentsOf: "!", at: hei.endIndex)
        hei.insert(contentsOf: "wuwa ", at: hei.startIndex)
        print(hei)
        
        // TODO: 删除
        hei.remove(at: hei.index(hei.endIndex, offsetBy: -1))
        print(hei)
        //hei.removeAll();
        
        // TODO: 判断
        // 字符串相等
        if hei == hello {
            print("两字符串相等")
        }
        // 判断前缀
        if hei.hasPrefix("hel") {
            print("有hel前缀")
        }
        // 判断后缀
        if hei.hasSuffix("lo") {
            print("有ol后缀")
        }
        // 判断是否为空
        if hei.isEmpty {
            print("字符串为空")
        }
        print("----------------------------------------------------------")
        // MARK: Array
        /*
         * Swfit中，数组是一种数据结构，用来存放多个类型相同的数据，数据在数组中是有序的。
         * Swfit中，数组存放任意类型数据需要定义为[Any]
         * Swift中，数组依然用[]表示。
         */
        // TODO: 定义
        let arr01 = ["abc","def","ghi"]
        let arr02:[String] = ["123","234","345"]
        let arr03:[Any] = ["lilei",25,"man",UIView()]
        let arr04 = [String]()
        let arr05:NSArray = ["12","13","14"]
        let arr06:NSMutableArray = ["1","2","3","4"]
        print(arr01,arr02,arr03,arr04,arr05,arr06)
        
        // TODO: 添加、插入
        var arr07 = ["hello","world","!"]
        // 追加
        arr07.append("append")
        // 插入
        arr07.insert("insert", at: 0)
        print(arr07)
        
        // TODO:删除
        var arr08 = ["1","2","3","4"]
        // 根据角标删除
        arr08.remove(at: 1)
        print(arr08)
        // 删除第一个
        arr08.removeFirst()
        // 删除最后一个
        arr08.removeLast()
        // 删除全部
        arr08.removeAll()
        print(arr08)
        
        // TODO: 修改
        var arr09 = ["1","2","3","4"]
        arr09[0] = "5"
        arr09[1...2] = ["6","7"]
        print(arr09)
        
        // TODO: 遍历
        let arr10 = ["1","2","3","4"]
        for str in arr10 {
            print(str)
        }
        // 在有序序列中，enumerated()可用于返回索引和元素，例如数组
        for (index,value) in arr10.enumerated() {
            print("Index: \(index),Valuie: \(value)")
        }
        print("----------------------------------------------------------")

        // MARK: Dictionary
        /*
         * 字典是集合类型存放多个键值对，其中键是唯一的，不能重复。
         * 字典中存放的键值对是无序的，写入的顺序和读取的顺序可能不同。
         * 字典中存放的数据是任意类型。
         * Swift中，字典和数组都用'[]'表示。
         */
        
        // TODO: 定义
        let dict01:[String:Int] = ["A":90,"B":80,"C":70,"D":60]
        let dict02 = [String:String]()
        let dict03 = ["a":"A","b":"B","c":"C"]
        print(dict01,dict02,dict03)
        
        // TODO: 添加、修改
        // swift中字典的增加和修改：如果有key就是修改，如果没有key，就是增加
        var dict04 = ["name":"lucy","sex":"female"]
        dict04["age"] = "19"
        dict04["name"] = "limei"
        print(dict04)
        
        // TODO: 删除
        var dict05 = ["name":"Lucy","sex":"female","age":"18"]
        dict05.removeValue(forKey: "sex")
        print(dict05)
        dict05.remove(at: dict05.index(forKey: "name")!)
        print(dict05)
        dict05.removeAll()
        
        // MARK: Set
        /*
         * Swift中，集合Set可以存放多个相同类型数据。
         * Set存放的数据时无序的。
         * Set中存放的数据不能重复，如果重复，系统会自动删除。
         */
        
        // TODO: 定义
        let set01:Set = [1,2,3,4,5,6]
        print(set01)
        
        // TODO: 插入、删除、遍历
        var set02:Set = [1,2,3,4,5,6,7]
        // 插入
        set02.insert(8)
        // 删除
        set02.remove(2)
        //set02.removeAll()
        //set02.removeFirst()
        print(set02)
        // 遍历
        for i in set02.sorted() {
            print(i)
        }
    }
}

