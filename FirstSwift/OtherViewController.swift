//
//  OtherViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/20.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class OtherViewController: UIViewController {
    init(){
        super.init(nibName: nil, bundle: nil)
        self.title = "其他"
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PersonalViewController has been loaded")
        
        self.view.backgroundColor = UIColor.black
    }
}
