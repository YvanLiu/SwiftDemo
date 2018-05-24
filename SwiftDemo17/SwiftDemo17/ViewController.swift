//
//  ViewController.swift
//  SwiftDemo17
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建
        let label = UILabel(frame: CGRect(x: 20, y: 220, width: 280, height: 40))
        // 设置背景颜色
        label.backgroundColor = UIColor.green
        // 设置字体颜色
        label.textColor = UIColor.black
        // 设置字体及字号
        label.font = UIFont.systemFont(ofSize: 15)
        // 设置字体对齐方式
        label.textAlignment = NSTextAlignment.left
        // 设置文本
        label.text = "Hello UILabel~"
        // 添加到父视图
        view.addSubview(label)
        // 设置行数
        label.numberOfLines = 0;
        // 字符串的截取
        label.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        // 调整文字大小以完全显示文本内容
        label.adjustsFontSizeToFitWidth = true
        // 缩小字间距以完全显示文本内容
        label.allowsDefaultTighteningForTruncation = true
        // 设置阴影颜色
        //label.shadowColor = UIColor.lightGray
        // 设置阴影偏移量
        //label.shadowOffset = CGSize(width: 2, height: 2)
        
        label.text = "adfasdjflkjalkjflkasjdlfkjaslkdjflkajsdlkfjaklsdjflkjalkdjfjsdajfjsdalfkjsajfljsdalkjflsafjldsajflkjsladkjflksdjalkfjlksajlkfjlksajdlfkjsalkdjflkajslfjlsa;jlfjasldkjflksajdlfkjsalkjdflkasjdfljsadklfjsalkdjflkajdlfjla;sdjlfkjaldjfadjlsf"
        
        let rect = getTextRectSize(text: label.text! as NSString, font: label.font, size: CGSize(width: 280.0, height: Double(MAXFLOAT)))
        label.frame = CGRect(x: 20, y: 220, width: 280, height: rect.height)
    }
}

/// 根据文本、字体、获取UILabel的宽和高
///
/// - Parameters:
///   - text: 文本
///   - font: 字体
///   - size: 最大的宽和高，比如（280,MAXFLOAT）
/// - Returns: 返回实际需要的rect
func getTextRectSize(text:NSString, font:UIFont, size:CGSize) ->CGRect {
    let attributes = [NSAttributedStringKey.font:font]
    let option = NSStringDrawingOptions.usesLineFragmentOrigin
    return text.boundingRect(with: size, options: option, attributes: attributes, context: nil)
}
