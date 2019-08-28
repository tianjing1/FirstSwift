//
//  DiscoverCell.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/27.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import SnapKit
import SDWebImage
class DiscoverCell: UITableViewCell {
    
    let thumbnailView = UIImageView()
    let titleLabel = UILabel()
    let descLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.accessoryType = .disclosureIndicator
        
        thumbnailView.backgroundColor = UIColor.gray
        thumbnailView.contentMode = .scaleAspectFill
        thumbnailView.clipsToBounds = true
        thumbnailView.layer.cornerRadius = 22.5//设置圆角半径
        self.contentView.addSubview(thumbnailView)
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)//标题字体大小
        self.contentView.addSubview(titleLabel)
        
        descLabel.font = UIFont.boldSystemFont(ofSize: 15)
        descLabel.textColor = UIColor.darkGray
        descLabel.numberOfLines = 2
        self.contentView.addSubview(descLabel)
        
        thumbnailView.snp.makeConstraints{ (make) in
            make.left.equalTo(self.contentView).offset(15)
            make.width.height.equalTo(45)
            make.centerY.equalTo(self.contentView)
        }
        
        titleLabel.snp.makeConstraints{ (make) in
            make.top.equalTo(self.contentView).offset(8)
            make.left.equalTo(thumbnailView.snp.right).offset(7)
            make.right.equalTo(self.contentView)
        }
        
        descLabel.snp.makeConstraints{ (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(3)
            make.left.equalTo(thumbnailView.snp.right).offset(7)
            make.right.equalTo(self.contentView)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //使用SDWebImage方法来加载图片
    func update(with showDictionary: [String: Any]) {
        let name = showDictionary["name"] as? String ?? ""
        let desc = showDictionary["description"] as? String ?? ""
        let imageUrl = showDictionary["imageUrl"] as? String ?? ""
        self.update(with: imageUrl, text: name, desc: desc)
    }
    
    func update(with imageUrl: String, text: String, desc: String) {
        self.thumbnailView.sd_setImage(with: URL(string: imageUrl))
        self.titleLabel.text = text
        self.descLabel.text = desc
        
        if text.contains("可播放") {
            self.titleLabel.textColor = UIColor.blue
        } else {
            self.titleLabel.textColor = UIColor.black
        }
    }
}
