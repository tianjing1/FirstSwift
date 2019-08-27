//
//  ViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/12.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController/*继承了UIKit提供的UIViewController类*/ {
    var titleLabel = UILabel()
    
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.title = "追约"
        self.tabBarItem.image = UIImage(named: "ic_tabbar_home_unselected")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "ic_tabbar_home_selected")?.withRenderingMode(.alwaysOriginal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("storyboards are incompatible with truth and beauty")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.init(red: 255/255, green: 228/255, blue: 17/255, alpha: 1)
        
//        //主页显示一个hello world的label控件
//        let label = UILabel.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
//        label.center = self.view.center
//        label.backgroundColor = UIColor.init(red: 3/255, green: 169/255, blue: 244/255, alpha: 1)
////        label.font = UIFont.boldSystemFont(ofSize: 30)//加粗并以30号字体显示
//        label.font = UIFont.init(name:"Avenir-Oblique", size: 30)////指定字体的方法
//        label.textAlignment = NSTextAlignment.center
//        label.text = "hello world!"
//        label.textColor = UIColor.white
//        self.view.addSubview(label)
//
//        label.snp.makeConstraints { (make) in
//            make.height.equalTo(100)
//            make.leading.equalTo(view.snp.leading)
//            make.trailing.equalTo(view.snp.trailing)
//            make.center.equalTo(view.snp.center)
//        }
        
        //主页显示一个点击跳转OtherViewVController的button
        let button = UIButton.init(frame: CGRect(x: 0, y: 0, width: 0, height: 100))
        button.backgroundColor = UIColor.init(red: 3/255, green: 169/255, blue: 244/255, alpha: 1)
        button.setTitle("Click it!", for: .normal)
        button.titleLabel?.font =  UIFont.init(name:"Avenir-Oblique", size: 30)
        self.view.addSubview(button)

        button.snp.makeConstraints{ (make) in
            make.width.equalTo(view.snp.width)
            make.height.equalTo(100)
            make.center.equalTo(view.snp.center)
        }
        
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }
    
    @objc func tapped(sender: UIButton) {
          self.navigationController?.pushViewController((TracingListViewController()
            ), animated: true)
    }
}


