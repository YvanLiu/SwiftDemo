//
//  ViewController.swift
//  SwiftDemo06
//
//  Created by 柳玉峰 on 2018/5/12.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: 枚举
    // 枚举的定义需要好enum关键字，枚举的成员则被放置在一对大括号中。
    // Swift中，枚举可以支持字典、字符、整数和浮点类型。作为枚举成员的数据类型。
    
    enum UserLevel {
        case 总经理
        case 区域经理
        case 主管
        case 员工
    }
    
    // TODO: 枚举的原始值
    // 枚举成员可以使用相同类型的默认值，这些默认值就是枚举的原始值
    /*
    enum Gender : UInt8 {
        case Male = 1
        case Female = 2
        case Unknow = 3
    }
     */
    /*
    enum Gender : UInt8 {
        case Male = 1, Female,Unknow
    }
     */
    
    // TODO: 给枚举添加方法
    enum Gender:UInt8 {
        case Male = 1, Female,Unknow
        
        func description() {
            switch self {
            case.Male:
                print("Hi,Man~")
            case .Female:
                print("Hi,lady~")
            case .Unknow:
                print("Hi~")
            }
        }
    }
    
    func createEnum() {
        
        let gender = Gender.Female
        gender.description()
        
        // TODO: 遍历枚举
        let userLevel = UserLevel.区域经理
        
        switch userLevel {
        case UserLevel.总经理:
            print("总经理")
        case UserLevel.区域经理:
            print("区域经理")
        case UserLevel.主管:
            print("主管")
            
        default:
            print("员工")
        }

    }
    
    // MARK: 结构体 struct
    // 可以为结构体定义变量或常量的属性，甚至可以像枚举一样，给结构体添加方法。
    /*
    struct Animal {
        let zooName:String = "Beijing zoo"
        var name:String
    }
    */
    // TODO: 给结构体添加方法
    struct Animal {
        let zooName:String = "Beijing Zoo"
        var name:String
        func say() {
            print("Hi,\(name)!")
        }
    }
    
    // TODO: 结构体的下标
    /*
     * 结构体、类和枚举都可以定义下标，它可以作为访问集合、列表或序列成员元素的快捷方式。
     * 可以使用下标通过索引值来设置或检索值，而不需要设置和检索分别使用实例方法。
     * 结构体可以定义多个下标，并且下标会基于传入的索引值的类型，选择合适的下标重载使用。
     * 下标的语法类似乎实例方法和计算属性。使用关键字 subscript来定义下标，并指定一个或多个输入形式参数和返回参数，与实例方法一样。
     */
    struct MySubscript {
        var num:Int
        subscript(n:Int) ->Int {
            return num*n
        }
    }
    
    func createStruct() {
        // TODO: 结构体实例化
        var animal = Animal(name: "Tiger")
        print(animal.name)
        animal.name = "daxiji"
        print(animal.name)
        
        // 类是引用类型，而结构体和枚举都是值类型。
        // 值类型是一种当它被指定为常量或变量，或被传递给函数时会拷贝的类型。
        // 这意味着你所创建的任意结构体和枚举实例，作为属性所包含的任何类型，在代码传递中总是被拷贝的。
        
        let firstAnimal = Animal(name:"Tiger")
        var secondAnimal = firstAnimal
        secondAnimal.name = "Elephant"
        
        print(firstAnimal)
        print(secondAnimal)
        
        // 给结构体添加方法
        print(animal.say())
        
        // 结构体的下标
        let sub = MySubscript(num:3)
        print(sub[3]) 
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createEnum()
        createStruct()
    }
    
    
    
}

