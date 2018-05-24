//
//  ViewController.swift
//  SwiftDemo05
//
//  Created by 柳玉峰 on 2018/5/12.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         * Swift使用关键字`func进行函数的定义。
         * 定义一个函数时，可以定义一个或多个不同名称、类型的值，作为函数的输入参数。当函数完成是，将返回出书定义的类型。
         * 每个函数都有一个函数名来描述它的功能。通过函数名以及对应类型的参数值，可以调用这个函数，函数的参数传递顺序必须与参数列表中的顺序相同。
         */
        print(sum(x: 4))
        print(minFunction(numbers: 0.1,0.2,0.05,0.25))
        
        // 将函数作为参数
        printMathResult(mathFunction: smaller(num1:num2:), num1: 2, num2: 4)
        printMathResult(mathFunction: bigger(num1:num2:), num1: 3, num2: 5)
        // 将函数作为返回值
        let function = choosFunction(big: true)
        print(function(3,9))
        
        // 嵌套函数
        print(chooseNumber(big: false, number1: 10, number2: 20))
        
        // 传入传出参数
        var number1 = 2
        var number2 = 3
        swap(num1: &number1, num2: &number2)
        print(number1)
        print(number2)
        
        // 常用内置函数
        builtFunction()
    }
    
    // TODO: 没有参数没有返回值
    func buildSubviews() {
        
    }
    
    // TODO: 有参数没有返回值
    func buildTbaleView(tableView:UITableView) {
        
    }
    
    // TODO: 没有参数有返回值
    func buildView() -> UIView {
        
        return UIView()
    }
    
    // TODO: 有参数有返回值
    func buildLabel(text:String, font:UIFont) -> UILabel {
        return UILabel()
    }
    
    // MARK: 为参数设置默认值
    func sum(x:Int = 1 ,y:Int = 2) -> Int {
        // 当函数中有一个传入参数没有传入时，就会采用默认值。
        return x+y
    }
    
    
    // MARK: 设置可变的参数数量
    func minFunction(numbers:Double...) -> Double {
        /*
         * 定义函数时，如果不能确定传入参数的数量，可通过变量类型后面加入...定义变量参数。
         * 一个函数最多能有一个变量参数，且必须是函数表中的最后一个。
         * 一个函数如果有一个或多个参数，变量参数一定放在最后。
         */
        if numbers.count == 0 {
            return 0
        } else {
            var temp:Double = numbers[0]
            for number in numbers {
                if temp >= number {
                    temp = number
                }
            }
            return temp
        }
    }
    
    // TODO: 最小值函数
    func smaller(num1:Int, num2:Int) -> Int {
        return (num1 > num2) ? num2 : num1
    }
    
    // TODO: 最大值函数
    func bigger(num1:Int, num2:Int) -> Int {
        return (num1 > num2) ? num1 : num2
    }

    
    // MARK: 函数作为参数传入
    func printMathResult(mathFunction:(Int,Int)->Int, num1:Int, num2:Int) {
        print("The result is \(mathFunction(num1,num2))" + ".")
    }
    
    // MARK: 函数作为返回值
    func choosFunction(big:Bool) -> (Int,Int)->Int {
        // 如果输入的big是true的话，就返回求最大值的函数，反之返回求最小值的函数。
        return big ? bigger : smaller
    }
    
    
    // MARK: 嵌套函数
    // 函数中存在另外一个或多个。函数里面的函数只在本函数中有作用。
    func chooseNumber(big:Bool, number1:Int, number2:Int) -> Int {
        // 函数内的最大值函数
        func getBigger(num1:Int, num2:Int) -> Int {
            return (num1 > num2) ? num1 : num2
        }
        // 函数内的最小值函数
        func getSmaller(num1:Int, num2:Int) -> Int {
            return (num1 > num2) ? num2 : num1
        }
        // 通过big判断用哪个函数计算传入的参数
        if big {
            return getBigger(num1: number1, num2: number2)
        } else {
            return getSmaller(num1: number1, num2: number2)
        }
    }
    
    
    // MARK: 函数的输入输出参数
    // TODO: 如果想要一个函数可以修改参数的值，并且这些修改在函数结束之后仍然存在，那就可以将参数定义为输入输出参数，这可以通过在参数类型的前面加入inout关键字来实现。
    // TODO: 同时，传入函数的参数，只能是变量，不能是常量，当传入的参数作为输入输出参数时，需要在前面加上&符号，表示这个参数值是可以被修改的。
    // 交换两个参数的值
    func swap(num1: inout Int, num2: inout Int) {
        let temp = num1
        num1 = num2
        num2 = temp
    }
    
    
    // MARK: 常用内置函数
    func builtFunction() {
        
        // TODO: abs绝对值函数
        print(abs(-3))
        
        // TODO: 最小值函数
        print(min(3,4,1))
        
        // TODO: 最大值函数
        print(max(4,5,6))
        
        // TODO: filter函数
        // filter函数用于查找在数组元素中，满足指定条件的元素，例如查数组中1~10能被3整除的数字
        let numbers = [1,2,3,4,5,6,7,8,9,10]
        for i in numbers.filter({$0%3==0}) {
            // $0表示忽略了参数名，而使用默认参数为$0
            print(i)
        }
        
        // TODO: map函数
        // map函数通常用于将数组中的每个元素，通过指定的方法进行转换。例如将数组中的每个整数都乘3：
        
        for i in numbers.map({$0*3}) {
            print(i)
        }
        
        // TODO: reduce函数
        // reduce函数可以把数组元素组合计算为一个值，比如将数组中每个数字进行加法计算，获得元素之和。
        let sum = numbers.reduce(0, {$0+$1})
        print(sum)
        // 第一个参数为初始值，这里设置初始值为0了，就是将 0，1...到10依次相加。
        // 也可以这样写
        let sum2 = numbers.reduce(0, +)
        print(sum2)
    }
}

