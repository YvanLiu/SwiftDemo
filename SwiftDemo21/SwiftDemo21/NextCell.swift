//
//  nextCell.swift
//  SwiftDemo21
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

class NextCell: UITableViewCell {

    let width:CGFloat = UIScreen.main.bounds.width
    var userLabel:UILabel!      // 名字
    var birthdayLabel:UILabel!  // 出生日期
    var sexLabel:UILabel!       // 性别
    var iconImv:UIImageView!    // 头像
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // 头像
        iconImv = UIImageView(frame: CGRect(x: 20, y: 15, width: 44, height: 44))
        iconImv.layer.masksToBounds = true
        iconImv.layer.cornerRadius = 22.0
        
        // 名字
        userLabel = UILabel(frame: CGRect(x: 74, y: 18, width: 70, height: 15))
        userLabel.textColor = UIColor.black
        userLabel.font = UIFont.boldSystemFont(ofSize: 15)
        userLabel.textAlignment = .left
        
        // 性别
        sexLabel = UILabel(frame: CGRect(x: 150, y: 20, width: 50, height: 13))
        sexLabel.textColor = UIColor.black
        sexLabel.font = UIFont.systemFont(ofSize: 13)
        sexLabel.textAlignment = .left
        
        // 出生日期
        birthdayLabel = UILabel(frame: CGRect(x: 74, y: 49, width: width-94, height: 13))
        birthdayLabel.textColor = UIColor.gray
        birthdayLabel.font = UIFont.systemFont(ofSize: 13)
        birthdayLabel.textAlignment = .left
        
        contentView.addSubview(iconImv)
        contentView.addSubview(userLabel)
        contentView.addSubview(sexLabel)
        contentView.addSubview(birthdayLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
