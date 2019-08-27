//
//  TracingListCell.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/27.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import SnapKit
class TracingListCell: UITableViewCell {
    
    let thumbnailView = UIImageView()
    let titleLabel = UILabel()
    let descLabel = UILabel()
    let watchNumLabel = UILabel()
    let totalNumLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.accessoryType = .disclosureIndicator
        
        thumbnailView.backgroundColor = UIColor.gray
        thumbnailView.contentMode = .scaleAspectFill
        thumbnailView.clipsToBounds = true
        thumbnailView.layer.cornerRadius = 22.5
        self.contentView.addSubview(thumbnailView)
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        self.contentView.addSubview(titleLabel)
        
        descLabel.font = UIFont.systemFont(ofSize: 15)
        descLabel.textColor = UIColor.darkGray
        descLabel.numberOfLines = 2
        self.contentView.addSubview(descLabel)
        
        watchNumLabel.font = UIFont.boldSystemFont(ofSize: 18)
        watchNumLabel.textAlignment = NSTextAlignment.left
        self.contentView.addSubview(watchNumLabel)
        
        totalNumLabel.font = UIFont.boldSystemFont(ofSize: 18)
        totalNumLabel.textAlignment = NSTextAlignment.left
        self.contentView.addSubview(totalNumLabel)
        
        thumbnailView.snp.makeConstraints { (make) in
            make.left.equalTo(self.contentView).offset(15)
            make.width.height.equalTo(45)
            make.centerY.equalTo(self.contentView)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.contentView).offset(8)
            make.left.equalTo(thumbnailView.snp.right).offset(7)
            make.right.lessThanOrEqualTo(watchNumLabel.snp.left).offset(-7)
        }
        
        descLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(3)
            make.left.equalTo(thumbnailView.snp.right).offset(7)
            make.right.equalTo(titleLabel)
        }
        
        watchNumLabel.snp.makeConstraints { (make) in
            make.right.equalTo(self.contentView)
            make.bottom.equalTo(self.contentView.snp.centerY)
        }
        
        totalNumLabel.snp.makeConstraints { (make) in
            make.right.equalTo(self.contentView)
            make.top.equalTo(self.contentView.snp.centerY)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(with image: UIImage, text: String, desc: String, watchedNum: Int, totalNum: Int) {
        self.thumbnailView.image = image
        self.titleLabel.text = text
        self.descLabel.text = desc
        self.watchNumLabel.text = "\(watchedNum)"
        self.totalNumLabel.text = "\(totalNum)"
        
        if text.contains("可播放") {
            self.titleLabel.textColor = UIColor.blue
        } else {
            self.titleLabel.textColor = UIColor.black
        }
    }
}
