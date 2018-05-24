//
//  ViewController.swift
//  SwiftDemo08
//
//  Created by 柳玉峰 on 2018/5/14.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        examineFunction()
        anyFunction()
        optionalsFunction()
    }
    
    // MARK: is、as 类型检查
    // 在swift中， 类型检查是一种检查实例类型的方式，同事也是让实例作为它的父类或子类的一种方式。
    // Swift通过 is、as来实现类型检查。
    // TODO: is用来判断类实例属于哪个类型，
    // TODO: as负责将其转换成其对应的类型。
    class World {
        var name:String
        init(name:String) {
            self.name = name
        }
    }
    class Person:World {
        var food:String
        init(name: String, food:String) {
            self.food = food
            super.init(name: name)
        }
    }
    class Dog: World {
        var master:String
        init(name:String, master:String) {
            self.master = master
            super.init(name: name)
        }
    }
    
    func examineFunction() {
        
        let arr:[World] = [
            Dog.init(name: "Benben", master: "Li"),
            Person.init(name: "Li", food: "apple"),
            Dog.init(name: "Dandan", master: "Han"),
            Person.init(name: "Han", food: "orange"),
            Person.init(name: "Liu", food: "banana")
        ]
        
        var dogNum:Int = 0
        var personNum:Int = 0
        // TODO: is使用
        // is 使用 类似于OC 的 isEqual
        for item in arr {
            if item is Dog {
                dogNum += 1
            } else {
                personNum += 1
            }
        }
        print("dog is \(dogNum), person is \(personNum).")
        
        // TODO: as使用
        for item in arr {
            if item is Dog {
                let dog = item as! Dog
                print("Dog: \(dog.name), master: \(dog.master).")
            } else {
                let person = item as! Person
                print("Person: \(person.name), food: \(person.food).")
            }
        }
        
    }
    
    
    
    // MARK: Any、Anyobject
    // 有点类似OC中的id，Swift为不确定的类型，提供了两种特殊别名，any和anyobject，
    // TODO: Anyobject可以表示class类型的实例。
    // TODO: Any可以表示除函数外任何类型的实例。不仅包含object对象，还包含基本类型。
    func anyFunction() {
        var objects = [Any]()
        objects.append(3)
        objects.append(3.141592653)
        objects.append("圆周率")
        
        for item in objects {
            switch item {
            case let someInt as Int:
                print("This is Int class \(someInt)")
            case let someDouble as Double:
                print("This is Double class \(someDouble)")
            default:
                print("This is String class \(item)")
            }
        }
        
        // anyObject
        var classes = [AnyObject]()
        classes.append(Dog(name: "Benben", master: "Li"))
        classes.append(Person(name: "Li", food: "apple"))
        for item in classes {
            if item is Dog {
                print("This is a dog")
            } else {
                print("This is a person")
            }
        }
    }
    
    
    
    // MARK: ?、!
    // 在Swift中，我们用var来定义变量，但Swfit中并不会自动给变量赋初始值。 所以如果使用未赋值的变量就会报错。
    // Optional类型一个枚举类型，这个类型只有两个元素,None和Some。nil对应Optional.None。非nil就是Optional.Some
    // TODO: “？”表示可选类型（Optionals） 就是将已存在的某种类型（结构体、枚举、类）定义为可选类型，表示该“新”类型的值可以为空nil
    // TODO: “！”表示告诉系统，“我肯定这个可选属性有值，强制取出来用”（强制解包），但是，如果这个可选类型属性当时的值为nil，那么会crash
   
    func optionalsFunction() {
        
        var password:String?
        print(password?.count as Any)
        password = "123456"
        print(password!.count)
        
        let people = People()
        //print(people.telephone!.count) // 强制解包 carsh
        print(people.telephone?.count as Any)   // 输出nil
        // TODO: ?? 的使用，
        
        let telephone = people.telephone ?? "13888888888" // 如果 people.telephone 为 nil，那么表达式返回值为"??"之后的值
        print(telephone)
    }
    
    class People {
        var telephone:String?
    }
    
    
}

