//
//  OtherViewController.swift
//  FirstSwift
//
//  Created by jessie tian on 2019/8/20.
//  Copyright © 2019 jessie tian. All rights reserved.
//

import UIKit
import SnapKit

class TracingListViewController: UITableViewController {
    let listIdentifier = "JessieIdentifier"
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.title = "追剧列表"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PersonalViewController has been loaded")
        
        self.view.backgroundColor =  UIColor.white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(TracingListCell.self, forCellReuseIdentifier: listIdentifier)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracingTitle.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let text = tracingTitle[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: listIdentifier) as? TracingListCell
        cell?.update(with: UIImage(named: "haier")!,
                     text: text,
                     desc: text + "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                     watchedNum: 1234,
                     totalNum: 2345)
        return cell ?? UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
