//
//  ViewController.swift
//  SwiftDemo09
//
//  Created by 柳玉峰 on 2018/5/15.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let num:Int = 1
        print(num.double)
        print(num.half)
        print(num.bigger(num: 2))
        
        let people3 = People()
        print(people3.velocity)
        people3.eat()
        people3.run()
        people3.walk()
    }
    
   
}

// MARK: 扩展
// Swift中，扩展功能（Extension）可以动态的给类添加功能。包括在没有权限获取源代码的情况下，扩展某个类型的功能，在OC中，是通过runtime来实现动态调用或动态添加功能的。
// 现有的类、结构体或枚举类型的方法，可以在扩展的帮助下进行添加。
// 类型的功能可以扩展加入，但不能重写。
// 扩展可以完成以下任务：
//   添加计算型属性和计算静态属性。
//   定义实例方法和类方法。
//   提供新的构造器。
//   定义下标。
//   定义和使用新的嵌套类型。
//   使一个已有类型符合某个接口。

// 扩展不能写在本类的大括号内，要写在大括号外。

extension Int {
    var double : Int {
        return self * 2
    }
    var half : Double {
        return Double(self)/2.0
    }
    
    func bigger(num : Int) -> Int {
        if self <= num {
            return num
        } else {
            return self
        }
    }
}


// MARK: 协议
// 协议是为方法、属性定义的一套规范，没有具体实现。
// 协议可以通过一个类、结构体、枚举来提供协议中要求的具体实现。类、结构体或枚举都可以遵循协议，并提供具体实现来完成协议定义的方法和功能。

protocol Walking {
    func walk()
}

// TODO: 协议的继承
protocol Runing:Walking {
    var velocity:Double{get set}
    func run()
}

protocol Eating {
    func eat()
}

// TODO: 遵循协议
class People:Runing,Eating {
    var velocity: Double = 2.0
    func walk() {
        print("I`m walking")
    }
    
    func run() {
        print("I`m runing")
    }
    
    func eat() {
        print("I`m eating")
    }
}











