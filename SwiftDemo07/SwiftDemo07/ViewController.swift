//
//  ViewController.swift
//  SwiftDemo07
//
//  Created by 柳玉峰 on 2018/5/14.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // MARK: 类的定义
    class People {
        var age:Int
        var sex:String
        var name:String
        
        // 初始化
        init() {
            self.age = 0;
            self.sex = ""
            self.name = ""
        }
        // 带赋值初始化
        init(name:String, sex:String, age:Int) {
            self.name = name
            self.sex = sex
            self.age = age
        }
        // 方法
        func introduce() {
            print("My name is \(name), I`m a \(sex), \(age) years old.")
        }
    }
    
    
    // MARK: 类的set和get方法
    // 基本来说，set就是设置，get就是获取。
    class Time {
        var hour:Int = 1
        var minute:Int {
            get {
                return self.hour * 60
            }
            set(newMinute) {
                self.hour = newMinute/60
            }
        }
    }
    
    
    // MARK: willSet和didSet
    // willSet 和 didSet 属于给类属性添加观察者。
    // willSet在设置属性值之前被调用。
    // didSet在设置属性值之后被调用。
    // 在实现willSet时，新的属性值将被作为常量参数来传递，可以给这个参数一个名字，如果没有，这个参数就迷人被命名为newValue。
    class Role {
        var skill:Int = 1
        var level:Int = 1 {
            willSet {
                print("角色即将升级，等级将要到达 \(newValue) ")
            }
            didSet {
                if oldValue >= level {
                    print("升级失败!!!")
                } else {
                    print("角色已经升级，等级到达 \(level)")
                }
            }
        }
    }
    
    
    // MARK: 静态方法 (类方法)
    // Swift中，可以为类、结构体和枚举定义静态方法，在为枚举和结果体定义静态方法时，使用关键字static。为类定义静态方法时，使用class关键字。
    class MathTool {
        class func sum(num1:Int, num2:Int) -> Int {
            return num1 + num2
        }
        class func multiply(num1:Int, num2:Int) -> Int {
            return num1 * num2
        }
    }
    
    
    // MARK: 类的析构
    // Swift和Object-C都是通过ARC来管理内存的，不需要我们对实例化的对象进行释放操作，但有些环境中，可能需要我们自己去清理一些额外的资源，比如创建了一个自定义的类，这个类打开了一个文件，并写入若干数据，就需要我们再类实例被释放之前关闭该文件。
    class FileManager {
        func openFile() {
            print("open file from the resorce")
        }
        func writeFile() {
            print("Write the data into the file")
        }
        
        // 析构函数 当实例的引用计数为0时，系统自动调用这个方法。
        deinit {
            print("delete the fileManager")
        }
    }
    
    
    // MARK: 继承
    // 通过继承特性，子类可以使用父类的方法和属性以及下标脚本，也可以重写父类
    class Animal {
        func run() {
            print("I can run")
        }
        // 如果不希望父类中的属性或方法被子类修改，可以在前面加 final
        final func eat() {
            print("I can eat")
        }
        
    }
    class Elephate: Animal {
        var name:String
        // 重写父类中方法 要在前面加 override
        override init() {
            self.name = "elephant"
        }
        
        override func run() {
            print("I'm a \(name), I can run.")
        }
    }
    
    
    // MARK: 延时加载属性lazy
    // 当第一次被调用的时候，才对其进行初始化操作的属性。当一个类拥有一个重度且不经常使用的属性时，比如这个属性是一个复杂的类，初始化时会占用很多的资源，而这个属性当前并不是必须使用的，此时就可以在声明前加lazy关键字，添加一个延时加载，这样就可以使用时再去进行初始化操作，提高程序运行效率。
    class Point {
        var pointValue:String = "1000"
    }
    class UserInfo {
        var username:String = "Coco"
        lazy var point:Point = Point()
    }
    

    // MARK: 类的引用特性
    // Swift中，元组、枚举、结构体属于值类型，而类属于引用类型。
    // 值类型的特征是赋值在赋值、初始化和传递参数过程中的数据。并未这个数据创建一个崭新独立的实例。
    // 引用类型与值类型不用，引用类型的实例在被赋予到一个变量或常量或作为参数传递到另一个函数时，其操作的并不是类实例的拷贝，而是已存在的实力本身。
    // 假如值类型和引用类型都是一个常量的话，值类型传递的是对这个常量进行拷贝得到的另一个常量，而引用类型传递的就是这个常量本身，
    class Car {
        var brand:String = "BMW"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: 类的使用
        let people = People()
        people.age = 15
        people.sex = "man"
        people.name = "Yvan"
        people.introduce()
        
        let people2 = People(name: "Lucy", sex: "women", age: 18)
        people2.introduce()
        
        // set 和 get 使用
        let time = Time()
        time.minute = 360
        print(time.hour)
        print(time.minute)
        
        // willSet didSet 使用
        let role = Role()
        role.level = 2
        role.level = 2
        
        // 静态方法 使用
        print(MathTool.sum(num1: 2, num2: 4))
        print(MathTool.multiply(num1: 2, num2: 4))
        
        // 析构方法实例 使用 '?'后面解释
        var fileManager:FileManager? = FileManager()
        fileManager?.openFile()
        fileManager?.writeFile()
        fileManager = nil
        
        // 继承 使用
        let elephant = Elephate()
        elephant.run()
        elephant.eat()
        
        // 延时加载使用
        let user = UserInfo()
        print(user.point.pointValue)
        
        // 引用类型实例
        let bmw = Car()
        print(bmw.brand)
        let toyota = bmw
        toyota.brand = "toyota"
        print(bmw.brand)
        print(toyota.brand)

        
        
    }

}

