//
//  ViewController.swift
//  SwiftDemo04
//
//  Created by 柳玉峰 on 2018/5/12.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // MARK: ------------- 循环语句 -------------
        
        // MARK: for循环
        /*
         * Swfit中的for循环语句，可以用来重复执行一系列语句，知道达成特殊条件。
         * Swift提供两种for循环语句，一种是C语言风格的条件递增(for-condition-increment),但在3.0中被弃用了。
         * 另一种是Swift推荐使用的 for-in循环
         */
        
        for i in 0..<3 {
            print(i)
        }
        // 0..<3表示的是 [0,3) 不包括3，如果要包含3 -> 0...3
        // TODO: for-in使用广泛，可以对字符串遍历，也可以对数组和字典遍历。
        let dict06 = ["name":"Lucy","sex":"woman","age":"18"]
        for (key,value) in dict06 {
            print("Key:\(key),Value:\(value)")
        }
        
        // MARK: while语句
        // Swift中的while循环语句和OC中非常相似。
        // TODO: while 是先执行条件语句，如果为true才执行大括号里的代码块。
        var temp = 0
        while temp < 3 {
            temp += 1
            print("test")
        }
        
        // MARK: repeat-while语句
        // TODO: Swft中的do-while语句，在swfit2.2中已经被repeat-while语句替换，但使用方法和传统的do-while一致。
        
        temp = 0
        repeat {
            temp += 1
            print("repeat test")
        }
        while temp < 3
        // TODO: repeat-while与while不同的是，它先执行大括号中代码块，再执行条件语句，所以它至少会被执行一次。
        
        // MARK: ------------- 条件语句 -------------

        // MARK: if语句
        // Swift中不再使用()。
        // 在OC中使用if语句如果代码段只有一行，可不写{}，但在Swift中，大括号是强制使用的。
        let grade = 80
        if grade > 90 {
            print("A")
        } else if grade > 80 {
            print("B")
        } else if grade > 70 {
            print("C")
        } else {
            print("D")
        }
        
        // MARK : switch语句
        /*
         * switch语句会尝试把值与若干个跳进进行匹配，当条件较多时，通常用switch代替if语句。
         * switch语句邮多个case构成。每一个case都是代码执行的一个分支。
         * 与OC中不同的是，不需要给case分支添加break。
         * switch语句必须是完整的，即每一个可能的值，都必须至少有一个case分支来对应。
         */
        let date = 3
        switch date {
        case 1:
            print("星期一")
        case 2:
            print("星期二")
        case 3:
            print("星期三")
        case 4:
            print("星期四")
        case 5:
            print("星期五")
        case 6:
            print("星期六")
        default:
            print("星期日")
        }
        // TODO: 为了匹配一些跟特定的值，Swift提供了几种更复杂的匹配模式。
        let time = 12
        switch time {
        case 0...6:
            print("sleep")
        case 7:
            print("get up")
        case 8,12,18 :
            print("eat")
        case let x where x>=18 && x<=24 :
            print("play")
        default:
            print("busy")
        }
        
        // MARK: continue语句
        // TODO: swift中continue用来告诉用于一个循环体停止本次的循环，并立即进入下一个循环
        let datas = [1,2,3,4,5,6,7,8,9]
        var odd = 0
        for even in datas {
            if even%2==0 {
                continue
            }
            odd += 1
        }
        print(odd)
        // 这段代码表示，如果数组里面的数是偶数，就立即停止循环，进行下一次循环，如果遇到的是奇数，那么执行odd++,从而得到数组中有多少个奇数
        
        // MARK: fallthrough语句
        /*
         * 在OC中，必须要在case的末尾加入break，才能阻止自动跳入下一个case分之中。
         * 在swift中，switch语句不会从一个case跳转到下一个case分支，而是只要匹配一个case分支，就会完成整条switch语句。
         */
        // TODO: fallthrough语句的作用是在switch语句中，执行完一个case分支之后，跳转到下一个case分支中。
        var massage:(String) = ""
        let time1 = 6
        switch time1 {
        case 2,3,6,12:
            massage += "\(time1) o`cl0ck"
            fallthrough
        default:
            print(massage+".")
        }
        
    }
}

