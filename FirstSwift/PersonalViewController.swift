//
//  PersonalViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/20.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class PersonalViewController: UIViewController {
    init(){
        super.init(nibName: nil, bundle: nil)
        self.title = "我的"
        self.tabBarItem.image = UIImage(named: "ic_tabbar_personal_unselected")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "ic_tabbar_personal_selected")?.withRenderingMode(.alwaysOriginal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("PersonalViewController has been loaded")
    
        self.view.backgroundColor = UIColor.gray
    }
}
