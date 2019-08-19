//
//  ViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/12.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController/*继承了UIKit提供的UIViewController类*/ {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.init(red: 255/255, green: 228/255, blue: 17/255, alpha: 1)
        let label = UILabel.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
        label.center = self.view.center
        label.backgroundColor = UIColor.init(red: 3/255, green: 169/255, blue: 244/255, alpha: 1)
//        label.font = UIFont.boldSystemFont(ofSize: 30)//加粗并以30号字体显示
        label.font = UIFont.init(name:"Avenir-Oblique", size: 30)////指定字体的方法
        label.textAlignment = NSTextAlignment.center
        label.text = "hello world!"
        label.textColor = UIColor.white
        self.view.addSubview(label)
        
        label.snp.makeConstraints { (make) in
            make.height.equalTo(100)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.center.equalTo(view.snp.center)
        }
    }
}

