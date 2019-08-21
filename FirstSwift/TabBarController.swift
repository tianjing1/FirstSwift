//
//  CustomTabBarController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/20.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController,UITabBarControllerDelegate {
    
        override func viewDidLoad() {
            super.viewDidLoad()
            self.delegate = self
            // Do any additional setup after loading the view.
        }
    
    let tab4Con  =  UINavigationController.init(rootViewController: OtherViewController())
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("运行了这段函数")
        guard viewController.isKind(of: UINavigationController.self)  else {
            return
        }

        let navi: UINavigationController = viewController as! UINavigationController

        //实现作业1:切换到tab3的时候显示tab4
        if navi.topViewController!.isKind(of: PersonalViewController.self) {
            print("tab3被打开了")
            //当前的viewController超过4个时return
            if self.viewControllers!.count >= 4 {
                print("已经打开tab4了")
                return
            }
            tabBarController.viewControllers?.append(tab4Con)
        }
        
        //实现作业2:切换到tab2的时候push tab4的viewController
        if navi.topViewController!.isKind(of: DiscoverViewController.self) {
            print("tab2被打开了")
            navi.pushViewController(OtherViewController.init(), animated: true)//push Tab4的ViewController
        }
    }
}
