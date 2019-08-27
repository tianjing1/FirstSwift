//
//  DiscoverViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/20.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class DiscoverViewController: UITableViewController {
    let reusableIdentifier = "JessiesIdentifier"
    
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
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(DiscoverCell.self, forCellReuseIdentifier: reusableIdentifier)

        
        //week3实现作业2:切换到tab2的时候push tab4的viewController
//        self.navigationController?.pushViewController(OtherViewController(), animated: true)
        
    }
    
    //返回mockData文件中总数作为tableView的行数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  mockData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       //section因为在这里只有一个，所以永远都为0
        let text = mockData[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier) as? DiscoverCell
        cell?.update(with: UIImage(named: "haier")!,
                    text: text,
                    desc: text + "there is the description")
        return cell ?? UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
