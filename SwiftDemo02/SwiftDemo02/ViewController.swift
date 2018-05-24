//
//  ViewController.swift
//  SwiftDemo02
//
//  Created by 柳玉峰 on 2018/5/11.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: int
        /*
         * Swift中，整数常量由一个或多个数字组成，可以有负号，例如：12，-10，999都是合法的。
         * Swift规定，数字中不能插入空格或逗号，如 1,000 是不合法的。
         * 如果整数常量以0和x开头，表示这个值是一个十六进制。由09和af组成，字母部分表示10~15 。如：0xf3f3f3。
         */
        // 直接赋值
        let num01 = 100
        // 指定类型
        let num02:Int = 200
        // 多个值可用','隔开
        let num03,num04:Int
        num03 = 300
        num04 = 400
        print(num01,num02,num03,num04)
        
        // MARK: float
        /*
         * Swift中，float可以储存小数位的变量。
         * Swift中，可以省略小数点之前的数字，也可以省略小数点后面的数字，但不能全部是省略。
         * Swift中，可以使用柯旭计数法来表示浮点常量。例如：1.2e3，表示1.2 x 103。e之前的数称为尾数，e之后的数称为指数。
         */
        // 如果定义的时候没有指定float类型，程序一般会分配为double类型
        let float01 = 0.1
        let float02:Float = 1.2e3
        // 或者可以这样
        let float03 = Float(0.12)
        print(float01,float02,float03)
        
        // MARK: double
        /*
         * Swift中，double类型与float类型类似。
         * Swift中，规定当float变量中所提供的值域不能满足要求时，需使用double。double所储存的位数，大概是float的两倍多。
         * Swift中，除非有特殊说明，否则编译器将浮点常量当做double值来对待。
         */
        let double01 = 0.02
        print(double01)
        
        // MARK: char
        /*
         * Swift中，char类型的作用是储存单个字符，将字符放到一堆单引号中就得到字符常量。如：'a','3'。
         * Swfit中，字符常量只能用单引号括起来，不能用双引号或其他符号。
         * Swift中，字符常量只能是单个字符，不能是字符串。
         * Swfit中，字符可以是字符集中的任意字符，但数字被定义为字符后就不能参与数值运算，如'3'与3是不同的。
         */
        let char01:Character = "a"
        let char02:Character = "3"
        print(char01,char02)
        
        // TODO: Swift中不被允许 int float double之间直接直接运算，如果需要做运算，需要将类型统一
        print(double01+Double(num01))
        
        
    }
}

