//
//  DiscoverViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/20.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class DiscoverViewController: UIViewController {
   init(){
        super.init(nibName: nil, bundle: nil)
        self.title = "发现"
        self.tabBarItem.image = UIImage(named: "ic_tabbar_discovery_unselected")?.withRenderingMode(.alwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "ic_tabbar_discovery_selected")?.withRenderingMode(.alwaysOriginal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         print("DiscoverViewController has been loaded")
        
        self.view.backgroundColor = UIColor.init(red: 3/255, green: 169/255, blue: 244/255, alpha: 1)
    }
}
